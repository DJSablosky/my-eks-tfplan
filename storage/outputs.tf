#----storage/outputs.tf----

output "project_name" {
  value = var.project_name
}

output "bucketname" {
  value = "${join(", ", aws_s3_bucket.tf_code.*.id)}"
}

