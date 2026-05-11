#> sketch:core/common/api/set_menu/pre
#
# Called before the SetMenu API is executed
#
# @within function sketch:core/api/set_menu/_

# Inside callback -> Backup callback
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch:temp/set_menu callback set from storage sketch:data callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:data callback
