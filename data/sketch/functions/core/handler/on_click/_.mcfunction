#> sketch:core/handler/on_click/_
#
# アイテムをクリックしたときに呼び出される
#
# @within function sketch:core/handler/on_click/check_clicked_item

## 前処理
# 紐付け
    function sketch:api/link

# クリック前のインベントリを取得 (OhMyDat)
    execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function #oh_my_dat:please

# クリック後のインベントリを取得
    data modify storage sketch:temp NowInventory set from entity @e[type=minecraft:chest_minecart, tag=SketchTarget, limit=1] Items

# 紐付けを解除
    function sketch:api/unlink


## メイン処理
# クリックされたスロットの処理へ
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 0b}] unless data storage sketch:temp NowInventory[{Slot: 0b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/0
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 1b}] unless data storage sketch:temp NowInventory[{Slot: 1b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/1
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 2b}] unless data storage sketch:temp NowInventory[{Slot: 2b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/2
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 3b}] unless data storage sketch:temp NowInventory[{Slot: 3b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/3
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 4b}] unless data storage sketch:temp NowInventory[{Slot: 4b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/4
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 5b}] unless data storage sketch:temp NowInventory[{Slot: 5b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/5
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 6b}] unless data storage sketch:temp NowInventory[{Slot: 6b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/6
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 7b}] unless data storage sketch:temp NowInventory[{Slot: 7b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/7
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 8b}] unless data storage sketch:temp NowInventory[{Slot: 8b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/8
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 9b}] unless data storage sketch:temp NowInventory[{Slot: 9b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/9
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:10b}] unless data storage sketch:temp NowInventory[{Slot:10b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/10
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:11b}] unless data storage sketch:temp NowInventory[{Slot:11b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/11
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:12b}] unless data storage sketch:temp NowInventory[{Slot:12b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/12
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:13b}] unless data storage sketch:temp NowInventory[{Slot:13b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/13
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:14b}] unless data storage sketch:temp NowInventory[{Slot:14b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/14
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:15b}] unless data storage sketch:temp NowInventory[{Slot:15b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/15
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:16b}] unless data storage sketch:temp NowInventory[{Slot:16b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/16
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:17b}] unless data storage sketch:temp NowInventory[{Slot:17b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/17
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:18b}] unless data storage sketch:temp NowInventory[{Slot:18b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/18
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:19b}] unless data storage sketch:temp NowInventory[{Slot:19b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/19
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:20b}] unless data storage sketch:temp NowInventory[{Slot:20b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/20
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:21b}] unless data storage sketch:temp NowInventory[{Slot:21b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/21
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:22b}] unless data storage sketch:temp NowInventory[{Slot:22b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/22
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:23b}] unless data storage sketch:temp NowInventory[{Slot:23b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/23
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:24b}] unless data storage sketch:temp NowInventory[{Slot:24b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/24
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:25b}] unless data storage sketch:temp NowInventory[{Slot:25b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/25
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:26b}] unless data storage sketch:temp NowInventory[{Slot:26b}].tag.Sketch.Button run function sketch:core/handler/on_click/slot/26

# idを設定
    data modify storage sketch: out.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id

# コールバック
    execute at @s run function #sketch:on_click


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp NowInventory
