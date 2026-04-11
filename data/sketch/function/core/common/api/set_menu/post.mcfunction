#> sketch:core/common/api/set_menu/post
#
# SetMenuAPIの実行後に呼び出される
#
# @within function sketch:core/api/set_menu/_

# コールバック内である -> callbackを設定
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch: callback set from storage sketch:temp/set_menu callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:temp/set_menu callback
