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
  instance_class = "db.m6i.large" # Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) 
  db_password    = var.db_password
  rds_identifier = "intel-terraform-example03"
  vpc_id         = "vpc-0e664499d925a8160"
  db_tags = {
    Owner    = "Intel.Terraform.Example.App@intel.com"
    Duration = "8"
  }
}
