###################
# dimensions and measures that reference views:
#   sales_orders_v2
#   currency_conversion_sdt
###################

view: across_sales_and_currency_conversion_xvw {

  dimension: key {
    primary_key: yes
    hidden: yes
    sql: 1 ;;
  }

  dimension: item_net_price_local_netpr {
    hidden: no
    type: number
    view_label: "Sales Orders Items"
    label: "Net Price of Item (Local Currency) NETPR"
    description: "Net Price of Item (Local Currency)"
    sql: ${sales_orders_v2.net_price_netpr} * ${currency_conversion_sdt.exchange_rate_ukurs} ;;
    value_format_name: decimal_2
  }

  dimension: item_net_value_local_netwr {
    hidden: no
    type: number
    view_label: "Sales Orders Items"
    label: "Net Value of Item (Local Currency) NETWR"
    description: "Item Qty * Net Price (Local Currency)"
    sql:  ${item_net_price_local_netpr} * ${sales_orders_v2.cumulative_order_quantity_kwmeng};;
    value_format_name: decimal_2

  }

  measure: total_net_value_local {
    hidden: no
    type: sum
    view_label: "Sales Orders"
    label: "Total Net Value (Local Currency {% parameter currency_conversion_sdt.select_local_currency %})"
    sql: ${item_net_value_local_netwr} ;;
    value_format_name: "format_large_numbers_d1"
    sql_distinct_key: ${sales_orders_v2.key};;
  }

  measure: avg_net_value_per_order_local {
    hidden: no
    type: number
    view_label: "Sales Orders"
    label: "Average Net Value per Order (Local Currency {% parameter currency_conversion_sdt.select_local_currency %})"
    sql: safe_divide(${total_net_value_local},${sales_orders_v2.count_orders});;
    sql_distinct_key: ${sales_orders_v2.key};;
    value_format_name: "format_large_numbers_d2"
  }

  measure: test_avg {
    hidden: no
    type: average
    view_label: "Sales Orders"
    sql: ${item_net_price_local_netpr} ;;
    sql_distinct_key: ${sales_orders_v2.key};;
  }

  measure: percent_of_total_net_value_local {
    hidden: no
    view_label: "Sales Orders"
    type: percent_of_total
    sql: ${total_net_value_local} ;;
    sql_distinct_key: ${sales_orders_v2.key};;
  }

}