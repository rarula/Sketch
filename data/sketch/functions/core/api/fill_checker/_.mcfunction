#> sketch:core/api/fill_checker/_
#
# @within function sketch:api/fill_checker

    data modify storage sketch:temp FillChecker set from storage sketch:data in
    data remove storage sketch:data in.key_a
    data remove storage sketch:data in.key_b

# Row 0: a b a b a b a b a
    function sketch:core/api/fill_checker/row_ab with storage sketch:temp FillChecker

# Row 1: b a b a b a b a b
    function sketch:core/api/fill_checker/row_ba with storage sketch:temp FillChecker

# Row 2: a b a b a b a b a
    function sketch:core/api/fill_checker/row_ab with storage sketch:temp FillChecker

    data remove storage sketch:temp FillChecker
