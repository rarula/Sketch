#> sketch:core/common/api/build/close_session
#
# セッションを閉じる
#
# @within function sketch:core/api/build/*/_

# MenuContainer
## 初期化
    loot replace block 10000 2 10000 container.0 255 loot sketch:set_empty


# LocalContainer
## 初期化
    loot replace block 10000 1 10000 container.0 255 loot sketch:set_empty

## SlotIndexを初期化
    scoreboard players set $LocalItemSlotIndex Sketch 0

## ItemInfoMapを削除
    data remove storage sketch:core LocalItemInfoMap
