#> sketch:core/common/api/build/post
#
# BuildAPIの実行後に呼び出される
#
# @within function sketch:core/api/build/*/_

# コールバック内である -> callbackを設定
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch: callback set from storage sketch:temp/build callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:temp/build callback
