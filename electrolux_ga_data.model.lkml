connection: "electrolux_ga_data"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: electrolux_ga_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: electrolux_ga_data_default_datagroup

explore: reporting {}
