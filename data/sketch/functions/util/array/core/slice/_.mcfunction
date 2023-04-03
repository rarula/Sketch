#> sketch:util/array/core/slice/_
#
# @input
#   storage sketch:util in
#       array: any[]
#       start?: int
#       end?: int
#
# @output
#   storage sketch:util out
#       array: any[]
#
# @within function sketch:util/array/slice

#>
# @private
    #declare score_holder $End
    #declare score_holder $Start

#>
# @within sketch:util/array/core/slice/**
    #declare score_holder $Index


# 引数を初期化
    execute unless data storage sketch:util in.end run data modify storage sketch:util in.end set value 2147483647
    execute unless data storage sketch:util in.start run data modify storage sketch:util in.start set value 0

# 戻り値を初期化
    data modify storage sketch:util out.array set value []


# 値を取得
    execute store result score $End Sketch run data get storage sketch:util in.end
    execute store result score $Start Sketch run data get storage sketch:util in.start

# end以降の要素を取り除く
    execute store result score $Index Sketch if data storage sketch:util in.array[]
    scoreboard players operation $Index Sketch -= $End Sketch
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/remove

# start以降の要素を取り出す
    execute store result score $Index Sketch if data storage sketch:util in.array[]
    scoreboard players operation $Index Sketch -= $Start Sketch
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/move


# 要素の順序を反転
    data modify storage sketch:util in.array set from storage sketch:util/temp Sliced
    function sketch:util/array/reverse


# リセット
    scoreboard players reset $End Sketch
    scoreboard players reset $Start Sketch
    scoreboard players reset $Index Sketch
    data remove storage sketch:util/temp Sliced
    data remove storage sketch:util in
