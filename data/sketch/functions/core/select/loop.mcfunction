#> sketch:core/select/loop
#
# スロットに変更があるか一つずつ確認
#
# @within function
#   sketch:core/select/_
#   sketch:core/select/loop

# 末尾のスロット番号を取得
    scoreboard players set $NewSlot Sketch -1
    scoreboard players set $LastSlot Sketch -1

    execute if score $NewLength Sketch matches 1.. store result score $NewSlot Sketch run data get storage sketch:temp NewInv[-1].Slot
    execute if score $LastLength Sketch matches 1.. store result score $LastSlot Sketch run data get storage sketch:temp LastInv[-1].Slot

# 選択したアイテムを確認
    execute if score $NewSlot Sketch = $LastSlot Sketch store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[-1] set from storage sketch:temp LastInv[-1]
    execute if score $NewSlot Sketch = $LastSlot Sketch if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[-1]

    execute unless score $NewSlot Sketch = $LastSlot Sketch run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[-1]

# 確認済みのスロットを削除
    execute if score $NewSlot Sketch = $LastSlot Sketch run data remove storage sketch:temp NewInv[-1]
    execute if score $NewSlot Sketch = $LastSlot Sketch run data remove storage sketch:temp LastInv[-1]

    execute if score $NewSlot Sketch > $LastSlot Sketch run data remove storage sketch:temp NewInv[-1]
    execute if score $NewSlot Sketch < $LastSlot Sketch run data remove storage sketch:temp LastInv[-1]

# 要素の数を更新
    execute store result score $NewLength Sketch if data storage sketch:temp NewInv[]
    execute store result score $LastLength Sketch if data storage sketch:temp LastInv[]

# 未確認の要素があれば再帰
    scoreboard players operation $TotalLength Sketch = $NewLength Sketch
    scoreboard players operation $TotalLength Sketch += $LastLength Sketch
    execute if score $TotalLength Sketch matches 1.. run function sketch:core/select/loop
