module "ec2_instance" { 
  source  = "terraform-aws-modules/ec2-instance/aws" 
 
  name = "single-instance" 
 
  instance_type          = "t2.micro" 
  key_name               = "user1" 
  monitoring             = true 
  vpc_security_group_ids = ["sg-0adc5e9047a723bfd"] 
  subnet_id              = "subnet-07f78217c6c089d3c" 
 
  tags = { 
    Terraform   = "true" 
    Environment = "dev" 
  } 
} 
