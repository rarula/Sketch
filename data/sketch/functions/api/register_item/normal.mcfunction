#> sketch:api/register_item/normal
#
# Register the item as normal
#
# @input
#   vector 10000 0 10000
#       container.0
#           Item to be registered
#   storage sketch: in
#       key: string
#           Key of the item to be registered
#       isGlobal?: boolean
#           Whether it can be referenced from all locations (Default value: false) (Optional)
#
# @api

function sketch:core/api/register_item/normal/_
