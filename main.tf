# Define a null resource
resource "null_resource" "example" {
  # This triggers the resource to be recreated when the value changes
  triggers = {
    # You can use any value here, like a timestamp for always running
    always_run = "${timestamp()}"
    # Or depend on other resource attributes
    # config_version = var.config_version
  }

  # Optional: Add provisioners if needed
  provisioner "local-exec" {
    command = "echo 'Null resource executed at: $(date)'"
  }
}

# Define outputs related to the null resource
output "null_resource_id" {
  description = "The ID of the null resource"
  value       = null_resource.example.id
}

output "null_resource_triggered_by" {
  description = "The value that triggered the null resource"
  value       = null_resource.example.triggers
}