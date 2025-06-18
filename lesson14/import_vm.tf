resource "aws_instance" "imported_vm" {

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  
  tags = {
    Name = "imported-vm"
  }
}
