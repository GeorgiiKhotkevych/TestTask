provider "aws" {
	access_key = "AKIAVD3TZXDYLINAVMNN"
	secret_key = "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"
	region = "eu-central-1"
}

resource "aws_instance" "MyUbuntu" {
	ami = "ami-05f7491af5eef733a"
	instance_type = "t2.micro"
	count = 4

	tags = {
	Name = "My_TF_Cluster"
	}
}