connection: "cortex-demo-thjennifer1"

include: "/dev/explores_dev/*.explore.lkml"
include: "/dev/dashboards_dev/*.dashboard"

named_value_format: Greek_Number_Format {
  value_format: "[>=1000000000]0.0,,,\"B\";[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0.0"
}
