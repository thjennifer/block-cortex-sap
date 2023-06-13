# The name of this view in Looker is "One Touch Order"
view: one_touch_order {
   sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.OneTouchOrder`
    ;;
  fields_hidden_by_default: yes


  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(${vbapclient_mandt},${vbapsales_document_item_posnr},${vbapsales_document_vbeln}) ;;
   }

  dimension: actual_billed_quantity_fkimg {
    type: number
    sql: ${TABLE}.ActualBilledQuantity_FKIMG ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_actual_billed_quantity_fkimg {
    type: sum
    sql: ${actual_billed_quantity_fkimg} ;;
  }

  measure: average_actual_billed_quantity_fkimg {
    type: average
    sql: ${actual_billed_quantity_fkimg} ;;
  }

  dimension: one_touch_order_count {
    type: number
    sql: ${TABLE}.OneTouchOrderCount ;;
  }

  dimension: vbapclient_mandt {
    type: string
    primary_key: no
    sql: ${TABLE}.VBAPClient_MANDT ;;
  }

  dimension: vbapsales_document_item_posnr {
    type: string
    primary_key: no
    sql: ${TABLE}.VBAPSalesDocument_Item_POSNR ;;
  }

  dimension: vbapsales_document_vbeln {
    type: string
    primary_key: no
    sql: ${TABLE}.VBAPSalesDocument_VBELN ;;
  }

  dimension: vbaptotal_order_kwmeng {
    type: number
    sql: ${TABLE}.VBAPTotalOrder_KWMENG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}