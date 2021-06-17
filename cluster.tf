#----------------------------------------------------------
# Terraform
#
# k8s cluster on AWS with EFK
#
# Made by georgii
#----------------------------------------------------------provider "aws" {
	access_key = ""
	secret_key = ""
	region = "eu-central-1"
}

resource "aws_instance" "Ubuntu" {
	ami = "ami-05f7491af5eef733a" #Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
	instance_type = "t2.micro"
	count = 4
	user_data = <<EOF

	tags = {
	Name = "My_TF_Cluster"
	}
}
