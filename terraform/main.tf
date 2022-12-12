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
  vpc_id         = "vpc-02830a5c4c5dae265"     #Required
  db_tags = {                                  #Optional  
    Owner    = "Intel.Terraform.Example.App@intel.com"
    Duration = "8"
  }
}
