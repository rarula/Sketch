#> sketch:util/array/core/flat/_
#
# @input
#   storage sketch:util in
#       array: any[]
#
# @output
#   storage sketch:util out
#       array: any[]
#
# @within function sketch:util/array/flat

# Flatten recursively
    data modify storage sketch:util/temp ArrayList append from storage sketch:util in.array
    function sketch:util/array/core/flat/loop

# Reverse element order
    data modify storage sketch:util in.array set from storage sketch:util/temp Flattened
    function sketch:util/array/reverse

# Reset
    data remove storage sketch:util/temp ArrayList
    data remove storage sketch:util/temp Flattened
    data remove storage sketch:util/temp isListTag
    data remove storage sketch:util in
