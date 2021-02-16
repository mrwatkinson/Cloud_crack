terraform {
  required_version = ">= 0.11.0"
}


module "s3-create-bucket" {
  source   = "./modules/S3/create-bucket"
  location = "ca-central-1"

  //You need to change this 
  bucket_name = "my-password-bucket"
}

module "s3-upload-bucket" {
  source = "./modules/S3/upload-bucket"
  location = "ca-central-1"
  //location = "us-east-1"
  //This should be the same as above
  bucket_name = "my-password-bucket"
}

module "iam-create-bucket-user" {
  source    = "./modules/IAM/create-bucket-user"
  user_name = "hashcat_bucket_user"
  
  //This should be the same as above
  directory_name = "my-password-bucket"
}

