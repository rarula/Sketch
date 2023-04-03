#> sketch:util/array/core/slice/remove
# @within function
#   sketch:util/array/core/slice/_
#   sketch:util/array/core/slice/remove

# 要素を取り除く
    data remove storage sketch:util in.array[-1]
    scoreboard players remove $Index Sketch 1

# すべての要素を取り除くまで再帰
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/remove
