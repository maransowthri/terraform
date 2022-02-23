provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "blog" {
  bucket = "${var.blog_bucket_subdomain}.${var.root_domain}"
}

resource "aws_s3_bucket_website_configuration" "s3_website" {
  bucket = aws_s3_bucket.blog.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_acl" "s3_acl" {
  bucket = aws_s3_bucket.blog.id
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "object1" {
  for_each     = fileset("html/", "*")
  bucket       = aws_s3_bucket.blog.id
  key          = each.value
  source       = "html/${each.value}"
  etag         = filemd5("html/${each.value}")
  content_type = "text/html"
}

resource "aws_s3_bucket_policy" "prod_website" {
  bucket = aws_s3_bucket.blog.id
  policy = <<POLICY
        {    
            "Version": "2012-10-17",    
            "Statement": [        
            {            
                "Sid": "PublicReadGetObject",            
                "Effect": "Allow",            
                "Principal": "*",            
                "Action": [                
                    "s3:GetObject"            
                ],            
                "Resource": [
                    "arn:aws:s3:::${aws_s3_bucket.blog.id}/*"            
                ]        
            }    
            ]
        }
        POLICY
}
