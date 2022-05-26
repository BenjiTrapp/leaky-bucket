resource "aws_s3_bucket" "leaky" {
  bucket = "leakybucket"
  acl    = "public-read"
  policy = file("./policies/leakypolicy.json")

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "flagfile" {
  bucket = aws_s3_bucket.leaky.id
  key    = "payslips-bcy34kdm31oxvky"
  source = "./content/payslips-bcy34kdm31oxvky.txt"

  content_type = "text/html"
}

resource "aws_s3_bucket_object" "indexfile" {
  bucket = aws_s3_bucket.leaky.id
  key    = "index.html"
  source = "./content/index.html"

  content_type = "text/html"
}