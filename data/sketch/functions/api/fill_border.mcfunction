#> sketch:api/fill_border
#
# Appends three rows to in.contents that form a border around a 3x9 menu:
#   Row 0: [key key key key key key key key key]
#   Row 1: [key  -   -   -   -   -   -   -  key]
#   Row 2: [key key key key key key key key key]
#
# Call before sketch:api/build/auto (or chest_minecart / ender_chest).
# The middle row's 7 inner slots are left as "-" (empty) for your content.
#
# @input
#   storage sketch:data in
#       key: string
#           Item key to use as the border
#
# @api

function sketch:core/api/fill_border/_
