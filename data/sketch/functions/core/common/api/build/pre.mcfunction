#> sketch:core/common/api/build/pre
#
# BuildAPIの実行前に呼び出される
#
# @within function sketch:core/api/build/*/_

# onSelectを使用している -> BuildAPIを使用したものとして設定
    execute if data storage sketch:core {OnSelectCalled:true} run data modify storage sketch:core BuildApiCalled set value true

# onSelectを使用している -> callbackを退避
    execute if data storage sketch:core {OnSelectCalled:true} run data modify storage sketch:temp/build callback set from storage sketch: callback
    execute if data storage sketch:core {OnSelectCalled:true} run data remove storage sketch: callback
