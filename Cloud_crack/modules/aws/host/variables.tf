variable "subnet_id" {}

variable "vpc_id" {}

variable "hostcount" {
  default = 1
}

variable "location" {
  default = ""
}

variable "instance_type" {
  #default = "p3.16xlarge" #change based on size t2.micro p2.xlarge p2.8xlarge p2.16xlarge
  default = "t2.micro"
}

variable "amis" {
  type = map
  default = {
   "us-east-1" =  "ami-07360d1b1c9e13198"
   "ca-central-1" = "ami-0283cf160a38e8b6f"
   #kali 2020.1a = ami-0f394074fe16decd6
  }
}

variable "hash_op" {
  type = string
 default = "-m 5600"
 //default = "-m16800"
}

variable "word_lists" {
  type = string
  default = "/home/ec2-user/wordlists/0-9.txt /home/ec2-user/wordlists/Top207-probable-v2.txt /home/ec2-user/wordlists/crackstation-human-only.txt" 
}

variable "bucketname" {
 type = string
 default= "my-password-bucket"
}

variable "pem_file_location" {
#Windows
type = string
default = ""
}
variable "pub_file_location" {
#Windows
type = string
default = ""
}

variable "az_name" {
  type = string
  default = "ca-central-1b"
}