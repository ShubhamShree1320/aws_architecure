################################################
# Common
################################################
environment    = "personal"
account_number = "681505350580"

################################################
# Tags
################################################
tags = {
  project     = "Aws_Architecture"
  environment = "personal"
  email       = "shubham.1320@gmail.com"
  owner       = "Shubham"
  live        = "yes"
}

################################################
# S3
################################################
import_bucket_prefix             = ["actuals", "forecast", "taskstandards", "forecast_edits", "budget_edits", "actuals/snowflake", "actuals/driveplan", "actuals/argos_sql", "actuals/kronos", "actuals/biw", "actuals/lfc", "forecast/snowflake", "forecast/driveplan", "forecast/argos_sql", "forecast/kronos", "forecast/biw", "forecast/lfc", "budget/snowflake", "budget/driveplan", "budget/argos_sql", "budget/kronos", "budget/biw", "budget/lfc", "taskstandards/snowflake", "taskstandards/driveplan", "taskstandards/argos_sql", "taskstandards/kronos", "taskstandards/biw", "taskstandards/lfc"]
export_bucket_prefix             = ["hours-forecast-earned", "rpt", "rpt/adwp_rpt_labour_role_demand_fact", "rpt/adwp_rpt_labour_role_demand_summary_fact", "rpt/adwp_rpt_metric_value_fact", "rpt/adwp_rpt_task_demand_fact", "rpt/adwp_rpt_task_demand_summary_fact", "argos-entity-id", "hours-forecast-earned-store-number"]
artifact_bucket_prefix           = ["lambda-layers"]
store_lookup_files_bucket_prefix = ["store-lookup", "rollup-file", "manual-store-lookup"]
exception_bucket_prefix          = ["driveplan", "argos", "kronos", "biw"]
adhoc_bucket_prefix              = ["snowflake"]
import_bucket_prefix_map = {
  "actuals" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "5"
  },
  "forecast" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "5"
  },
  "taskstandards" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "5"
  },
  "budget" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "30"
  },
  "forecast_edits" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "30"
  },
  "budget_edits" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "30"
  }
}
export_bucket_prefix_map = {
  "hours-forecast-earned" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "5"
  },
  "rpt" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "5"
  }
}
store_lookup_files_bucket_map = {
  "store-lookup" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "180"
  },
  "rollup-file" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "180"
  },
  "manual-store-lookup" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "180"
  }
}

exception_bucket_map = {
  "driveplan" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "10"
  },
  "argos" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "10"
  },
  "kronos" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "10"
  },
  "biw" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "10"
  }
}

adhoc_bucket_map = {
  "snowflake" = {
    expiration_days            = "1830"
    transition_to_deep_archive = "30"
  }
}

store_lookup_file_path = "store-lookup/Store_Lookup_Table.csv"

# OPUS Bucket Variables
opus_transition_to_glacier_ir_value = "30"
opus_s3_kms_key_description         = "KMS Key for Opus S3 bucket"
create_opus_s3_resource             = true
opus_storage_class                  = "GLACIER_IR"

################################################
# Lambda
################################################

forecast_prefix                              = "hours-forecast-earned/headcount_"
expiration                                   = "28800"
ftp_host                                     = "sainsburys-xfer.kronos.net"
secret_id                                    = "prd/kronos/ftp"
adapt_secret_id                              = "prd/adapt/secret"
forecast_kronos_prefix                       = "forecast/kronos"
remote_folder_path_daily                     = "/Prod/WIM_OUT/ADAPT/Daily/"
remote_folder_path_15min                     = "/Prod/WIM_OUT/ADAPT/15Min/"
import_forecast_expiration                   = "7200"
import_actuals_expiration                    = "7200"
import_budget_expiration                     = "7200"
import_taskstandards_expiration              = "7200"
x_forwarded_host                             = "https://sbry.repladapt.com/api"
x_tennant_id                                 = "sbry"
rpt_prefix                                   = "rpt/"
rpt_expiration                               = "7200"
adapt_hostname                               = "sbry.repladapt.com"
adapt_notify_email                           = "team.dion@sainsburys.co.uk"
store_lookup_kronos_prefix                   = "store-lookup"
remote_folder_path_store_lookup              = "/Prod/WIM_OUT/ADAPT/Store Lookup Table/"
kronos_integration_secret_id                 = "prd/kronos/integration"
kronos_integration_url                       = "https://sainsburys.kronos.net/wfc/XmlService"
aws_pandas_arn                               = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python39:2"
headcount_process_temp_prefix_name           = "hours-forecast-earned-store-number"
headcount_process_dest_prefix_name           = "hours-forecast-earned-kronos"
kronos_error_xml_prefix                      = "headcount-kronos-error-api/"
s3_read_max_keys_kronos                      = "90"
process_failed_budget_imports                = "true"
process_failed_forecast_imports              = "true"
process_failed_actuals_imports               = "true"
process_failed_taskstandards_imports         = "true"
forecast_reserved_concurrent_executions      = "15"
actuals_reserved_concurrent_executions       = "50"
budget_reserved_concurrent_executions        = "15"
taskstandards_reserved_concurrent_executions = "15"
