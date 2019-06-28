view: fabric_racao {
  sql_table_name: bi_ga_novapiratininga.fabric_racao ;;

  dimension: cod_batida {
    type: number
    sql: ${TABLE}.Cod_Batida ;;
    value_format_name: id
  }

  dimension: cod_det_batida {
    type: number
    sql: ${TABLE}.Cod_DetBatida ;;
  }

  dimension: custo_previsto {
    type: number
    sql: ${TABLE}.Custo_Previsto ;;
  }

  dimension: custo_realizado {
    type: number
    sql: ${TABLE}.Custo_Realizado ;;
  }

  dimension_group: data_fabric {
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
    sql: ${TABLE}.Data_Fabric ;;
  }

  dimension_group: data_registro {
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
    sql: ${TABLE}.Data_Registro ;;
  }

  dimension: hora_final {
    type: string
    sql: ${TABLE}.Hora_Final ;;
  }

  dimension: hora_inicial {
    type: string
    sql: ${TABLE}.Hora_Inicial ;;
  }

  dimension: id_alimento {
    type: number
    sql: ${TABLE}.Id_Alimento ;;
  }

  dimension: id_centro_custo {
    type: number
    sql: ${TABLE}.Id_Centro_Custo ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.Id_Cliente ;;
  }

  dimension: id_data_fabric {
    type: number
    sql: ${TABLE}.Id_Data_Fabric ;;
  }

  dimension: id_fabric_lote {
    type: number
    sql: ${TABLE}.Id_Fabric_Lote ;;
  }

  dimension: id_fabric_racao {
    type: number
    sql: ${TABLE}.Id_Fabric_Racao ;;
    primary_key: yes
  }

  dimension: id_operador {
    type: number
    sql: ${TABLE}.Id_Operador ;;
  }

  dimension: id_racao {
    type: number
    sql: ${TABLE}.Id_Racao ;;
  }

  dimension: lote_fabric {
    type: string
    sql: ${TABLE}.Lote_Fabric ;;
  }

  dimension: meta_perc {
    type: number
    sql: ${TABLE}.Meta_Perc ;;
  }

  dimension: previsto {
    type: number
    sql: ${TABLE}.Previsto ;;
  }

  dimension: realizado {
    type: number
    sql: ${TABLE}.Realizado ;;
  }

  dimension: tempo_sec {
    type: number
    sql: ${TABLE}.Tempo_Sec ;;
  }

  measure: total_previsto {
    type: sum
    sql: ${previsto} ;;
  }

  measure: total_realizado {
    type: sum
    sql: ${realizado} ;;
  }

  measure: difference {
    type: number
    sql: ${total_previsto} - ${total_realizado} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
