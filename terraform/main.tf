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
  db_password    = var.db_password
  rds_identifier = "mysql-terraform-02"
  vpc_id         = "vpc-04cda22668fd25150"
  db_tags = {
    "App"      = "Intel Optimized Database"
    "Owner"    = "Lucas.Melo@intel.com"
    "Duration" = "8"
  }
}