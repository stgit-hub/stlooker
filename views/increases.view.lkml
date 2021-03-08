view: increases {
  sql_table_name: genetica.Increases ;;

  dimension: bag {
    type: string
    sql: ${TABLE}.bag ;;
  }

  dimension: current_rm {
    type: string
    sql: ${TABLE}.currentRM ;;
  }

  dimension: entry {
    type: string
    sql: ${TABLE}.entry ;;
  }

  dimension: entry_prefix {
    type: string
    sql: ${TABLE}.entryPrefix ;;
  }

  dimension: entry_sufix {
    type: string
    sql: ${TABLE}.entrySufix ;;
  }

  dimension: f {
    type: string
    sql: ${TABLE}.f ;;
  }

  dimension: h {
    type: string
    sql: ${TABLE}.h ;;
  }

  dimension_group: harvest {
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
    sql: ${TABLE}.harvestDate ;;
  }

  dimension: herbicide_trait {
    type: string
    sql: ${TABLE}.herbicideTrait ;;
  }

  dimension: increase_code {
    primary_key: yes

    type: number
    sql: ${TABLE}.increaseCode ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: pb {
    type: string
    sql: ${TABLE}.pb ;;
  }

  dimension_group: planting {
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
    sql: ${TABLE}.plantingDate ;;
  }

  dimension: pw {
    type: string
    sql: ${TABLE}.pw ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
