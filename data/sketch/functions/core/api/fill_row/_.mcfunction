#> sketch:core/api/fill_row/_
#
# @within function sketch:api/fill_row

    data modify storage sketch:temp FillRow.key set from storage sketch:data in.key
    data remove storage sketch:data in.key
    function sketch:core/api/fill_row/execute with storage sketch:temp FillRow
    data remove storage sketch:temp FillRow
