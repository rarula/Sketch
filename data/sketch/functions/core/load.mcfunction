#> sketch:core/load
#
# load時に実行される
#
# @within tag/function minecraft:load

# バージョン初期化
    execute unless data storage sketch: Version run data modify storage sketch: Version set value "1.0.0"

# マイグレーション
## 1.0.x
    execute if data storage sketch: {Version:"1.0.0"} run function sketch:core/migration/1.0.1/_

## 2.0.x
    execute if data storage sketch: {Version:"1.0.1"} run function sketch:core/migration/2.0.0/_
    execute if data storage sketch: {Version:"2.0.0"} run function sketch:core/migration/2.0.1/_
    execute if data storage sketch: {Version:"2.0.1"} run function sketch:core/migration/2.0.2/_
