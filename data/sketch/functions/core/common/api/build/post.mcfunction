#> sketch:core/common/api/build/post
#
# Called after the Build API is executed
#
# @within function sketch:core/api/build/*/_

# Inside callback -> Set callback
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch:data callback set from storage sketch:temp/build callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:temp/build callback
