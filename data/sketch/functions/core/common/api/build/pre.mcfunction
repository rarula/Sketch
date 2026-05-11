#> sketch:core/common/api/build/pre
#
# Called before the Build API is executed
#
# @within function sketch:core/api/build/*/_

# Inside callback -> Backup callback
    execute if data storage sketch:core {isInCallback:true} run data modify storage sketch:temp/build callback set from storage sketch:data callback
    execute if data storage sketch:core {isInCallback:true} run data remove storage sketch:data callback

# onSelect is used -> Set as having used Build API
    execute if data storage sketch:core {CalledOnSelect:true} run data modify storage sketch:core CalledBuildApi set value true
