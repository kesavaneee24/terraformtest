resource "aws_s3_bucket" "s3bucketcreation" {
  bucket = "s3test-224617"
  acl    = "public-read"
  policy = "${file("${path.module}/s3publicpolicy.json")}"

   website {
    index_document = "index.html"
   # error_document = "./error.html"
  }
}
resource "aws_s3_bucket_object" "index" {
  bucket = "${aws_s3_bucket.s3bucketcreation.bucket}"
  key = "index.html"
  source = "D:\Jees PoC\Websitecreation\terraformtest\index.html"
  content_type = "text/html"
  #etag = "${md5(file("src/index.html"))}"
}
