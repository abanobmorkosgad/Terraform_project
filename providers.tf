provider "aws" {
    region = "us-east-1"
}

terraform {
	backend "s3" {
		bucket = "bibo-state-bucket"
		key = "statefile"
		region = "us-east-1"
	}
}
