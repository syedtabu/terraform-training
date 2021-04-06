

resource "aws_instance" "myec2" {
    count = var.instancecount
    ami =  var.amiid
    instance_type = "t2.micro"
    tags = {
       # "Name" = "Tabu-instance-${count.index + 1}"
           "name" = var.tags[count.index]
          }
}
resource "aws_s3_bucket" "appbucket" {
    bucket = "myepsilongtraining3"
}

output "myec2ipaddress" {
  value = aws_instance.myec2[*].public_ip
}
output "myec2privateip" {
  value = aws_instance.myec2[*].private_ip
}