view: reporting {
  sql_table_name: electrolux_ga_reporting.reporting ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: dealer_actions {
    type: number
    sql: ${TABLE}.dealer_actions ;;
  }

  dimension: engineer_actions {
    type: number
    sql: ${TABLE}.engineer_actions ;;
  }

  dimension: page_path {
    type: string
    sql: ${TABLE}.page_path ;;
  }

  dimension: site_id {
    type: string
    sql: ${TABLE}.site_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
