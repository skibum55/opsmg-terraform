resource "aws_s3_bucket" "destination" {
  provider = "us-east-2"
  region   = "us-east-2"
  bucket = "tfstatereplicationbucket"
  acl = "private"
  tags {
      Name        = "Terraform State Replication Bucket"
      Environment = "All"
  }
  versioning {
      enabled = true
  }
}

resource "aws_s3_bucket" "state" {
    bucket = "tfstatebucket"
    acl = "private"
    tags {
        Name        = "Terraform State Bucket"
        Environment = "All"
    }
    versioning {
        enabled = true
    }
    replication_configuration {
        role = "${aws_iam_role.replication.arn}"

        rules {
            id     = "foobar"
            prefix = "foo"
            status = "Enabled"

            destination {
                bucket        = "${aws_s3_bucket.destination.arn}"
                storage_class = "STANDARD"
            }
        }
    }
}
