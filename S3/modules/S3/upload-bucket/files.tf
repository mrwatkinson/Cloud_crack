
resource "aws_s3_bucket_object" "file_0" {
  bucket = var.bucket_name
  key = "0-9.txt"
  source = "./files/0-9.txt"
  //Windows Path
  //source = ".\\files\\0-9.txt"
}

resource "aws_s3_bucket_object" "file_1" {
  bucket = var.bucket_name
  key = "Top207-probable-v2.txt"
  source = "./files/Top207-probable-v2.txt"
  //Windows Path
  //source = ".\\files\\Top207-probable-v2.txt"
}
resource "aws_s3_bucket_object" "file_2" {
  bucket = var.bucket_name
  key = "crackstation-human-only.txt"
  source = "./files/crackstation-human-only.txt"
  //Windows Path
  //source = ".\\files\\Top207-probable-v2.txt"
}
resource "aws_s3_bucket_object" "file_3" {
  bucket = var.bucket_name
  key = "crackme.txt"
  source = "./files/crackme.txt"
  etag    = "${filemd5("${path.module}/timestamp")}"
  //Windows Path
  //source = ".\\files\\htb-netntlmt"
}