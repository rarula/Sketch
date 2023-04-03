#> sketch:core/emitter/check_item_click/_
#
# アイテムクリックをイベントとして発火する
#
# @within function sketch:core/tick

# アイテムクリックを確認
    execute store success storage sketch:temp isClicked byte 1.0 run clear @s #sketch:all{Sketch:{isButton:true}}

# アイテムクリックしている -> イベントを発火
    execute if data storage sketch:temp {isClicked:true} run function sketch:core/handler/on_item_click/_

# リセット
    data remove storage sketch:temp isClicked
