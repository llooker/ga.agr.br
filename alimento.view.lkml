view: alimento {
  sql_table_name: bi_ga_novapiratininga.alimento ;;

  dimension: cod_alimento {
    type: number
    sql: ${TABLE}.Cod_Alimento ;;
  }

  dimension_group: data_final {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_final ;;
  }

  dimension_group: data_inicial {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.data_inicial ;;
  }

  dimension: estoque_min_dias {
    type: number
    sql: ${TABLE}.Estoque_Min_Dias ;;
  }

  dimension: id_alimento {
    type: number
    sql: ${TABLE}.Id_Alimento ;;
    primary_key: yes
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.Id_Cliente ;;
  }

  dimension: nome_alimento {
    type: string
    sql: ${TABLE}.Nome_Alimento ;;
  }

  dimension: prazo_entrega {
    type: number
    sql: ${TABLE}.Prazo_Entrega ;;
  }

  dimension: preco_medio_ton {
    type: number
    sql: ${TABLE}.Preco_Medio_Ton ;;
  }

  dimension: tipo_alimento {
    type: string
    sql: ${TABLE}.Tipo_Alimento ;;
  }

  dimension: is_volumoso {
    type: yesno
    sql: ${tipo_alimento} = 'VOLUMOSO' ;;
  }

  dimension: versao {
    type: number
    sql: ${TABLE}.versao ;;
  }

  measure: count_volumoso {
    type: count
    filters: {
      field: is_volumoso
      value: "Yes"
    }
  }

  measure: precent_volumoso {
    type: number
    sql: 1.0* ${count_volumoso} / nullif(${count},0) ;;
    value_format_name: percent_2
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
