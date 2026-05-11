#> sketch:core/common/api/set_menu/post
#
# Called after the SetMenu API is executed
#
# @within function sketch:core/api/set_menu/_

# Inside callback -> Set callback
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch:data callback set from storage sketch:temp/set_menu callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:temp/set_menu callback
