include: "/views/standard/**/*.view"

explore: cash_discount_utilization {
  sql_always_where: ${client_mandt} = '{{ _user_attributes['client_id_rep'] }}';;
}