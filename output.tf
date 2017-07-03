output "public_ip" {
  value = "${aws_instance.puppetagent.public_ip}"
}
output "private_dns" {
  value = "${aws_instance.puppetagent.private_dns}"
}
output "private_ip" {
  value = "${aws_instance.puppetagent.private_ip}"
}
