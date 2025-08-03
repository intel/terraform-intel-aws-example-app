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
  #instance_class = "db.m6i.large"      # Intel Xeon 3rd Generation Scalable processors (code-named Ice Lake) 25% to 42% better cost/performance than db.m5
  instance_class = "db.m5.large"    # db.m5 instance(Skylake or Cascade Lake) costs the same as db.m6i and performance is lower
  db_password    = var.db_password
  rds_identifier = "mysql-terraform-02"
  vpc_id         = "vpc-0fefa926c09427d3d"
  db_tags = {
    "App"      = "Intel Optimized Database"
    "Owner"    = "Lucas.Melo@intel.com"
    "Duration" = "24"
  }
}