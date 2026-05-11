#> sketch:api/fill_row
#
# Appends a full 9-slot row to in.contents, filled with the given key.
# Call before sketch:api/build/auto (or chest_minecart / ender_chest).
# Use "-" as the key to produce an empty slot row.
#
# @input
#   storage sketch:data in
#       key: string
#           Item key to fill the row with
#
# @api

function sketch:core/api/fill_row/_
