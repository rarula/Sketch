#> sketch:core/common/api/set_menu/pre
#
# SetMenuAPIの実行前に呼び出される
#
# @within function sketch:core/api/set_menu/_

# コールバック内である -> callbackを退避
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch:temp/set_menu callback set from storage sketch: callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch: callback
