- dashboard: sales_order_status_snapshot
  title: Sales Order Status Snapshot
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: m3w6s8s4yTif2jgtNxMd1u
  elements:
  - name: <font color="#c1c1c1">How healthy is Order Fulfillment?</font>
    type: text
    title_text: <font color="#c1c1c1">How healthy is Order Fulfillment?</font>
    body_text: ''
    row: 1
    col: 0
    width: 24
    height: 1
  - title: Avg Fill Rate %
    name: Avg Fill Rate %
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: single_value
    fields: [sales_orders.fill_rate]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: average_of_fill_rate, based_on: sales_orders.fill_rate,
        expression: '', label: Average of Fill Rate, type: average, _kind_hint: measure,
        _type_hint: number, id: MHtgohgUyM}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 5
    col: 0
    width: 6
    height: 3
  - title: Cancelled Orders
    name: Cancelled Orders
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: single_value
    fields: [sales_orders.canceled_order_percentage]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.00"%"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 11
    col: 0
    width: 6
    height: 3
  - title: Return Order
    name: Return Order
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: single_value
    fields: [sales_orders.Return_Order_Percentage]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.00"%"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 8
    col: 0
    width: 6
    height: 3
  - title: Order vs Delivery Efficiency
    name: Order vs Delivery Efficiency
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: looker_bar
    fields: [materials_md.material_text_maktx, deliveries.count_delivery_item_posnr,
      sales_orders.count_sales_orders_line_item]
    sorts: [sales_orders.count_sales_orders_line_item desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${sales_orders.count_sales_orders_line_item}\
          \ - ${deliveries.count_delivery_item_posnr}", label: Difference, value_format: !!null '',
        value_format_name: Default formatting, _kind_hint: measure, table_calculation: difference,
        _type_hint: number}, {category: table_calculation, expression: "1 - \n(${deliveries.count_delivery_item_posnr}\
          \ / ${sales_orders.count_sales_orders_line_item})", label: "% Difference",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: difference_1, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: deliveries.count_delivery_item_posnr,
            id: deliveries.count_delivery_item_posnr, name: Total Delivery Line Item},
          {axisId: sales_orders.count_sales_orders_line_item, id: sales_orders.count_sales_orders_line_item,
            name: Total Sales Order Line Item}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Product
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hidden_series: []
    series_types:
      deliveries.count_delivery_item_posnr: scatter
    series_colors:
      sales_orders.count_sales_orders_line_item: "#A6CFD5"
      deliveries.count_delivery_item_posnr: "#000"
    series_labels:
      sales_orders.count_sales_orders_line_item: Total Sales Order Line Item
      deliveries.count_delivery_item_posnr: Total Delivery Line Item
    series_point_styles: {}
    defaults_version: 1
    hidden_fields: [difference_1, difference]
    note_state: collapsed
    note_display: above
    note_text: Top 10 Products by Total Sales Order Line Items
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 2
    col: 7
    width: 17
    height: 12
  - title: One Touch Order
    name: One Touch Order
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: single_value
    fields: [sales_orders.one_touch_order_percentage, sales_orders.count_one_touch_order,
      sales_orders.count_total_orders]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.00"%"
    series_types: {}
    defaults_version: 1
    hidden_fields: [sales_orders.count_one_touch_order, sales_orders.count_total_orders]
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 2
    col: 0
    width: 6
    height: 3
  - title: navigation
    name: navigation
    model: cortex_sap_operational_dev
    explore: sales_orders
    type: single_value
    fields: [tabbed_navigation.tabbed_navigation]
    filters:
      tabbed_navigation.tab_to_focus: '2'
    sorts: [tabbed_navigation.tabbed_navigation]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    series_types: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Year: sales_orders.creation_date_erdat_date
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Year
    title: Year
    type: field_filter
    default_value: 2022/01/01 to 2022/04/22
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.creation_date_erdat_date
  - name: Currency
    title: Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: currency_conversion_new.tcurr
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: countries_md.country_name_landx
  - name: Sales Org
    title: Sales Org
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: sales_organizations_md.sales_org_name_vtext
  - name: Distribution Channel
    title: Distribution Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: distribution_channels_md.distribution_channel_name_vtext
  - name: Division
    title: Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: divisions_md.division_name_vtext
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: cortex_sap_operational_dev
    explore: sales_orders
    listens_to_filters: []
    field: materials_md.material_text_maktx