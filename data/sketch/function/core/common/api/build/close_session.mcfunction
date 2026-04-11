#> sketch:core/common/api/build/close_session
#
# セッションを閉じる
#
# @within function sketch:core/api/build/*/_

# MenuContainer
## 初期化
    item replace block 10000 2 10000 container.0 with minecraft:air
    item replace block 10000 2 10000 container.1 with minecraft:air
    item replace block 10000 2 10000 container.2 with minecraft:air
    item replace block 10000 2 10000 container.3 with minecraft:air
    item replace block 10000 2 10000 container.4 with minecraft:air
    item replace block 10000 2 10000 container.5 with minecraft:air
    item replace block 10000 2 10000 container.6 with minecraft:air
    item replace block 10000 2 10000 container.7 with minecraft:air
    item replace block 10000 2 10000 container.8 with minecraft:air
    item replace block 10000 2 10000 container.9 with minecraft:air
    item replace block 10000 2 10000 container.10 with minecraft:air
    item replace block 10000 2 10000 container.11 with minecraft:air
    item replace block 10000 2 10000 container.12 with minecraft:air
    item replace block 10000 2 10000 container.13 with minecraft:air
    item replace block 10000 2 10000 container.14 with minecraft:air
    item replace block 10000 2 10000 container.15 with minecraft:air
    item replace block 10000 2 10000 container.16 with minecraft:air
    item replace block 10000 2 10000 container.17 with minecraft:air
    item replace block 10000 2 10000 container.18 with minecraft:air
    item replace block 10000 2 10000 container.19 with minecraft:air
    item replace block 10000 2 10000 container.20 with minecraft:air
    item replace block 10000 2 10000 container.21 with minecraft:air
    item replace block 10000 2 10000 container.22 with minecraft:air
    item replace block 10000 2 10000 container.23 with minecraft:air
    item replace block 10000 2 10000 container.24 with minecraft:air
    item replace block 10000 2 10000 container.25 with minecraft:air
    item replace block 10000 2 10000 container.26 with minecraft:air

# LocalContainer
## 初期化
    item replace block 10000 1 10000 container.0 with minecraft:air
    item replace block 10000 1 10000 container.1 with minecraft:air
    item replace block 10000 1 10000 container.2 with minecraft:air
    item replace block 10000 1 10000 container.3 with minecraft:air
    item replace block 10000 1 10000 container.4 with minecraft:air
    item replace block 10000 1 10000 container.5 with minecraft:air
    item replace block 10000 1 10000 container.6 with minecraft:air
    item replace block 10000 1 10000 container.7 with minecraft:air
    item replace block 10000 1 10000 container.8 with minecraft:air
    item replace block 10000 1 10000 container.9 with minecraft:air
    item replace block 10000 1 10000 container.10 with minecraft:air
    item replace block 10000 1 10000 container.11 with minecraft:air
    item replace block 10000 1 10000 container.12 with minecraft:air
    item replace block 10000 1 10000 container.13 with minecraft:air
    item replace block 10000 1 10000 container.14 with minecraft:air
    item replace block 10000 1 10000 container.15 with minecraft:air
    item replace block 10000 1 10000 container.16 with minecraft:air
    item replace block 10000 1 10000 container.17 with minecraft:air
    item replace block 10000 1 10000 container.18 with minecraft:air
    item replace block 10000 1 10000 container.19 with minecraft:air
    item replace block 10000 1 10000 container.20 with minecraft:air
    item replace block 10000 1 10000 container.21 with minecraft:air
    item replace block 10000 1 10000 container.22 with minecraft:air
    item replace block 10000 1 10000 container.23 with minecraft:air
    item replace block 10000 1 10000 container.24 with minecraft:air
    item replace block 10000 1 10000 container.25 with minecraft:air
    item replace block 10000 1 10000 container.26 with minecraft:air

## SlotIndexを初期化
    scoreboard players set $LocalItemSlotIndex Sketch 0

## ItemInfoMapを削除
    data remove storage sketch:core LocalItemInfoMap
