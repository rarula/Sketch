#> sketch:api/fill_checker
#
# Appends three rows to in.contents forming a checkerboard pattern
# with two alternating item keys:
#   Row 0: [a b a b a b a b a]
#   Row 1: [b a b a b a b a b]
#   Row 2: [a b a b a b a b a]
#
# Call before sketch:api/build/auto (or chest_minecart / ender_chest).
#
# @input
#   storage sketch:data in
#       key_a: string
#           First item key (slots 0, 2, 4, 6, 8 of even rows)
#       key_b: string
#           Second item key (slots 1, 3, 5, 7 of even rows)
#
# @api

function sketch:core/api/fill_checker/_
