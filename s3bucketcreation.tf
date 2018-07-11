resource "aws_s3_bucket" "s3bucketcreation" {
  bucket = "s3test-224617"
  acl    = "public-read"
  policy = "${file("D:\Jees PoC\Websitecreation\s3bucketpolicy.json")}"

  website {
    index_document = "D:\Jees PoC\Websitecreation\index.html"
    error_document = "D:\Jees PoC\Websitecreation\error.html"
  }
}