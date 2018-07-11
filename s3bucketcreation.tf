resource "aws_s3_bucket" "s3bucketcreation" {
  bucket = "s3test-224617"
  acl    = "public-read"
  policy = "${file("${path.module}/s3publicpolicy.json")}"

   website {
    index_document = "index.html"
    error_document = "error.html"
  }
}