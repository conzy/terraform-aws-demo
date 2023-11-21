# HCL Code here. You may want to split the implementation into logical files or move repeated HCL into a sub module.
# Do NOT include a provider in the module. The provider should only exist in root modules.

# terraform defintion for sqs queue
resource "aws_sqs_queue" "terraform_queue" {
  name = "terraform_queue"
  delay_seconds = 90
  max_message_size = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10
}
