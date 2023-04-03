#> sketch:util/array/core/reverse/loop
# @within function
#   sketch:util/array/core/reverse/_
#   sketch:util/array/core/reverse/loop

# 要素を移動
    data modify storage sketch:util out.array append from storage sketch:util in.array[-1]
    data remove storage sketch:util in.array[-1]

# すべての要素を移動するまで再帰
    execute if data storage sketch:util in.array[0] run function sketch:util/array/core/reverse/loop
