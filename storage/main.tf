#---------storage/main.tf---------

# Create a random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create the bucket
resource "aws_s3_bucket" "tf_code" {
  count         = var.bucket_count
  bucket        = format("%s-%d",var.project_name,random_id.tf_bucket_id.*.dec[count.index])
  acl           = "private"
  force_destroy = true
  tags = {
      Name = "tf_bucket${count.index+1}"
  }

  server_side_encryption_configuration {
      rule {
          apply_server_side_encryption_by_default {
              sse_algorithm = "AES256"
          }
      }
  }
}
