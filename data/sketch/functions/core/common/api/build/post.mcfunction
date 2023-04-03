#> sketch:core/common/api/build/post
#
# BuildAPIの実行後に呼び出される
#
# @within function sketch:core/api/build/*/_

# onSelectを使用している -> callbackを設定
    execute if data storage sketch:core {OnSelectCalled:true} run data modify storage sketch: callback set from storage sketch:temp/build callback
    execute if data storage sketch:core {OnSelectCalled:true} run data remove storage sketch:temp/build callback
