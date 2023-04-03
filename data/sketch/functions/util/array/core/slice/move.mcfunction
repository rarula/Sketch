#> sketch:util/array/core/slice/move
# @within function
#   sketch:util/array/core/slice/_
#   sketch:util/array/core/slice/move

# 要素を取り出す
    data modify storage sketch:util/temp Sliced append from storage sketch:util in.array[-1]
    data remove storage sketch:util in.array[-1]
    scoreboard players remove $Index Sketch 1

# すべての要素を取り出すまで再帰
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/move
