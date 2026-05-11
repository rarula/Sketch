#> sketch:core/api/fill_border/_
#
# @within function sketch:api/fill_border

    data modify storage sketch:temp FillBorder.key set from storage sketch:data in.key
    data remove storage sketch:data in.key

# Row 0: full row
    function sketch:core/api/fill_border/full_row with storage sketch:temp FillBorder

# Row 1: only left and right columns
    function sketch:core/api/fill_border/side_row with storage sketch:temp FillBorder

# Row 2: full row
    function sketch:core/api/fill_border/full_row with storage sketch:temp FillBorder

    data remove storage sketch:temp FillBorder
