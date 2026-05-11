#> sketch:core/load
#
# Called on load
#
# @within tag/function minecraft:load

# Version initialization
    execute unless data storage sketch:data Version run data modify storage sketch:data Version set value "1.0.0"

# Migration
## 1.0.x
    execute if data storage sketch:data {Version:"1.0.0"} run function sketch:core/migration/1.0.1/_

## 2.0.x
    execute if data storage sketch:data {Version:"1.0.1"} run function sketch:core/migration/2.0.0/_
    execute if data storage sketch:data {Version:"2.0.0"} run function sketch:core/migration/2.0.1/_
    execute if data storage sketch:data {Version:"2.0.1"} run function sketch:core/migration/2.0.2/_
    execute if data storage sketch:data {Version:"2.0.2"} run function sketch:core/migration/2.0.3/_
    execute if data storage sketch:data {Version:"2.0.3"} run function sketch:core/migration/2.0.4/_
    execute if data storage sketch:data {Version:"2.0.4"} run function sketch:core/migration/2.0.5/_
## 2.1.x
    execute if data storage sketch:data {Version:"2.0.5"} run function sketch:core/migration/2.1.0/_

## 2.2.x
    execute if data storage sketch:data {Version:"2.1.0"} run function sketch:core/migration/2.2.0/_

## 2.3.x
    execute if data storage sketch:data {Version:"2.2.0"} run function sketch:core/migration/2.3.0/_
