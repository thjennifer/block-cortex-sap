view: tabbed_navigation {

  dimension: tabbed_navigation {
    hidden: no
    view_label: "Tabbed Navigation"
    label: "Tabbed Navigation (3 Tabs)"
    description: "Use in Single Value Viz with Parameter Focus Tab"
    sql: "tabbed navigation" ;;
    # {% assign dash_path = "/dashboards/cortex_sap_operational_demo::sap_order_to_cash_02c_" %}
    # /dashboards/cortex_sap_operational_dev::jt_sales_order_details?
    # {% assign default_filters = "Region={{ _filters['countries_md.country_name_landx']| url_encode }}&Year={{ _filters['sales_orders.creation_date_erdat_date']| url_encode }}&Sales+Org={{ _filters['sales_organizations_md.sales_org_name_vtext']| url_encode }}&Distribution+Channel={{ _filters['distribution_channels_md.distribution_channel_name_vtext']| url_encode }}&Product={{ _filters['materials_md.material_text_maktx']| url_encode }}&Division={{ _filters['divisions_md.division_name_vtext']| url_encode }}&ampCurrency={{ _filters['currency_conversion_new.tcurr']| url_encode }}" %}
    # {% assign default_filters = "Region={{ _filters['countries_md.country_name_landx']| url_encode }}&Year={{ _filters['sales_orders.creation_date_erdat_date']| url_encode }}&Sales+Org={{ _filters['sales_organizations_md.sales_org_name_vtext']| url_encode }}&Distribution+Channel={{ _filters['distribution_channels_md.distribution_channel_name_vtext']| url_encode }}&Product={{ _filters['materials_md.material_text_maktx']| url_encode }}&Division={{ _filters['divisions_md.division_name_vtext']| url_encode }}&ampCurrency={{ _filters['currency_conversion_new.tcurr']| url_encode }}" %}
    #{% assign dash_ids_array = "3038,3039,3037" | split:"," %}

# /dashboards/cortex_sap_operational_dev::jt_sales_order_fulfillment
    html:
        {% assign dash_ids_array = "sales_order_fulfillment,sales_order_status_snapshot,sales_order_details" | split:"," %}
        {% assign tab_name_array = "Order Fulfillment,Order Status Snapshot,Order Details" | split:"," %}
        {% assign dash_path = "/dashboards/cortex_sap_operational_dev::"%}

      {% assign focus_tab_style = "padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 20px; font-weight: bold; background-color: #eaf1fe;" %}
      {% assign tab_style = "padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 20px;"%}
      {% assign focus_tab_nbr = tab_to_focus._parameter_value %}
      {% if focus_tab_nbr == "1"%}{% assign tab1_style = focus_tab_style %}{%else%}{%assign tab1_style = tab_style%}{%endif%}
      {% if focus_tab_nbr == "2"%}{% assign tab2_style = focus_tab_style %}{%else%}{%assign tab2_style = tab_style%}{%endif%}
      {% if focus_tab_nbr == "3"%}{% assign tab3_style = focus_tab_style %}{%else%}{%assign tab3_style = tab_style%}{%endif%}


      <div style="border-bottom: solid 1px #4285F4;">
      <nav style="font-size: 16px; padding: 6px 10px 0 10px; height: 40px">
      <a style="{{tab1_style}}" href="{{dash_path}}{{dash_ids_array[0]}}?Region={{ _filters['countries_md.country_name_landx']| url_encode }}&Year={{ _filters['sales_orders.creation_date_erdat_date']| url_encode }}&Sales+Org={{ _filters['sales_organizations_md.sales_org_name_vtext']| url_encode }}&Distribution+Channel={{ _filters['distribution_channels_md.distribution_channel_name_vtext']| url_encode }}&Product={{ _filters['materials_md.material_text_maktx']| url_encode }}&Division={{ _filters['divisions_md.division_name_vtext']| url_encode }}&ampCurrency={{ _filters['currency_conversion_new.tcurr']| url_encode }}">{{tab_name_array[0]}}</a>
      <a style="{{tab2_style}}" href="{{dash_path}}{{dash_ids_array[1]}}?Region={{ _filters['countries_md.country_name_landx']| url_encode }}&Year={{ _filters['sales_orders.creation_date_erdat_date']| url_encode }}&Sales+Org={{ _filters['sales_organizations_md.sales_org_name_vtext']| url_encode }}&Distribution+Channel={{ _filters['distribution_channels_md.distribution_channel_name_vtext']| url_encode }}&Product={{ _filters['materials_md.material_text_maktx']| url_encode }}&Division={{ _filters['divisions_md.division_name_vtext']| url_encode }}&ampCurrency={{ _filters['currency_conversion_new.tcurr']| url_encode }}">{{tab_name_array[1]}}</a>
      <a style="{{tab3_style}}" href="{{dash_path}}{{dash_ids_array[2]}}?Region={{ _filters['countries_md.country_name_landx']| url_encode }}&Year={{ _filters['sales_orders.creation_date_erdat_date']| url_encode }}&Sales+Org={{ _filters['sales_organizations_md.sales_org_name_vtext']| url_encode }}&Distribution+Channel={{ _filters['distribution_channels_md.distribution_channel_name_vtext']| url_encode }}&Product={{ _filters['materials_md.material_text_maktx']| url_encode }}&Division={{ _filters['divisions_md.division_name_vtext']| url_encode }}&ampCurrency={{ _filters['currency_conversion_new.tcurr']| url_encode }}">{{tab_name_array[2]}}</a>
      </nav>
      </div> ;;
  }

  #when paired with tabbed_guide_xxx measure it will set focus on the selected tab
  parameter: tab_to_focus {
    view_label: "Tabbed Navigation"
    hidden: no
    type: unquoted
    allowed_value: {value:"1"}
    allowed_value: {value:"2"}
    allowed_value: {value:"3"}
    default_value: "1"
  }
  }
