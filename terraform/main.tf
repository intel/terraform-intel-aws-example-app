# --------------------------------------------------------
#                     _       _       _
#                    (_)     | |     | |
#                     _ _ __ | |_ ___| |
#                    | | '_ \| __/ _ \ |
#                    | | | | | ||  __/ |
#                    |_|_| |_|\__\___|_|
# --------------------------------------------------------

# Provision Intel Optimized AWS RDS MySQL server
module "optimized-mysql-server" {
  source         = "intel/aws-mysql/intel"
  db_password    = var.db_password             #Required
  rds_identifier = "intel-terraform-example02" #Required
  vpc_id         = "vpc-0590e8a9422c543ae"     #Required
  instance_class = "db.m5.2xlarge"             #Optional
  db_tags = {
    Owner    = "Intel.Terraform.Example.App@intel.com"
    Duration = "8"
    Application = "Demo"
  }
}
