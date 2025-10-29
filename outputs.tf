output "public_ips" {
  description = "Public IPs of EC2 instances"
  value       = [for i in aws_instance.vm : i.public_ip]
}

output "instance_names_roles" {
  description = "EC2 instance names and their assigned roles"
  value = [for i in aws_instance.vm : {
    name = i.tags["Name"]
    role = i.tags["Role"]
  }]
}