#> example:inventorygui/gui/main/_
# @within function example:inventorygui/gui/main/check

# インベントリ
    execute in minecraft:overworld run item replace block 1 1 1 container.0 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.1 with minecraft:lime_stained_glass_pane{InventoryGui:{id:{gui:"SERVER_LIST", sound:"BUTTON"}}, display:{Name:'"試合に参加 / JOIN THE MATCH"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.2 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.3 with minecraft:leather_chestplate{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"装備変更 / EQUIPMENT"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.4 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.5 with minecraft:comparator{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"設定 / SETTINGS"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.6 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.7 with minecraft:chest{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"ショップを開く / OPEN SHOP"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.8 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}

    execute in minecraft:overworld run item replace block 1 1 1 container.9 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.10 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.11 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.12 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.13 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.14 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.15 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.16 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.17 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}

    execute in minecraft:overworld run item replace block 1 1 1 container.18 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.19 with minecraft:grass_block{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"リソースパックをダウンロード / DOWNLOAD RESOURCEPACK"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.20 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.21 with minecraft:armor_stand{InventoryGui:{id:{gui:"CLOSE", cmd:"TRAINING", sound:"BUTTON"}}, display:{Name:'"試し打ちサーバーへ接続 / TRAINING FIELD"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.22 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run loot replace block 1 1 1 container.23 loot example:player_head
    execute in minecraft:overworld run item replace block 1 1 1 container.24 with minecraft:black_stained_glass_pane{InventoryGui:{id:{gui:"MAIN", sound:"BUTTON"}}, display:{Name:'"."'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.25 with minecraft:oak_door{InventoryGui:{id:{gui:"CLOSE", cmd:"RETURN", sound:"BUTTON"}}, display:{Name:'"ロビーへ戻る / RETURN TO LOBBY"'}}
    execute in minecraft:overworld run item replace block 1 1 1 container.26 with minecraft:barrier{InventoryGui:{id:{gui:"CLOSE", sound:"BUTTON"}}, display:{Name:'{"color":"white","text":"閉じる"}'}}

# ビルド
    function inventorygui:build
