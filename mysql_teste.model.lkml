connection: "teste"

include: "*.view.lkml"                       # include all views in this project


explore: fabric_racao {
  join: alimento {
    sql_on: ${fabric_racao.id_alimento} = ${alimento.id_alimento} ;;
    relationship: one_to_many
    type: left_outer
  }
}

explore: alimento {}
