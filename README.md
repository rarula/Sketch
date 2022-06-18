# Sketch
チェスト付きトロッコによるインベントリメニューを簡単に作成するためのフレームワーク

## 対応バージョン
- 1.19

## 依存ライブラリ
- 赤石愛様：
  - [Close Detector 1.19](https://github.com/Ai-Akaishi/CloseDetector) (MIT License)
  - [Oh! My Dat! 1.19](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
  - [Player Item Tuner 1.19](https://github.com/Ai-Akaishi/PlayerItemTuner) (MIT License)

## API
### [`sketch:api/create`](data/sketch/functions/api/create.mcfunction)
配置されたアイテムからメニューを作成します
```mcfunction
# ボタンを配置する
item replace block 10000 -64 10000 container.11 with minecraft:barrier{Sketch:{id:"EXAMPLE_BUTTON"}, display:{Name:'"ボタン"'}}
item modify block 10000 -64 10000 container.11 sketch:button

# 配置したアイテムからメニューを作成
function sketch:api/create
```

### [`sketch:api/fill`](data/sketch/functions/api/fill.mcfunction)
container.0 に配置されたアイテムをメニューに敷き詰めます
```mcfunction
# 敷き詰めるアイテムを配置
item replace block 10000 -64 10000 container.0 with minecraft:gray_stained_glass_pane{Sketch:{id:"EXAMPLE_BACKGROUND"}, display:{Name:'"."'}}
item modify block 10000 -64 10000 container.0 sketch:button

# ボタンを敷き詰める
function sketch:api/fill
```

### [`sketch:api/refresh`](data/sketch/functions/api/refresh.mcfunction)
メニューを初期化します
```mcfunction
function sketch:api/refresh
```

### [`sketch:api/register`](data/sketch/functions/api/register.mcfunction)
実行者のチェスト付きトロッコをSketchに登録します
```mcfunction
summon minecraft:chest_minecart ~ ~ ~ {Tags:["ExampleEntity"]}
execute as @e[type=minecraft:chest_minecart, tag=ExampleEntity] run function sketch:api/register
```

### [`sketch:api/link`](data/sketch/functions/api/link.mcfunction)
最後にインタラクトした、Sketchに登録されているチェスト付きトロッコと紐付けます  
紐付けられたエンティティには `SketchTarget` タグが設定されます
```mcfunction
function sketch:api/link
...
```

### [`sketch:api/unlink`](data/sketch/functions/api/unlink.mcfunction)
最後にインタラクトした、Sketchに登録されているチェスト付きトロッコとの紐付けを解除します  
```mcfunction
...
function sketch:api/unlink
```

## イベント
### [`#sketch:on_open`](data/sketch/tags/functions/on_open.json)
プレイヤーがメニューを開いたときに呼び出されます

### [`#sketch:on_close`](data/sketch/tags/functions/on_close.json)
プレイヤーがメニューを閉じたときに呼び出されます
| 出力 | 型 | 説明 |
| :- | :- | :- |
| storage sketch: out.items | Item[] | 閉じた後のメニューに含まれる外部のアイテムのリスト |

### [`#sketch:on_select`](data/sketch/tags/functions/on_select.json)
プレイヤーがボタンを選択したときに呼び出されます
| 出力 | 型 | 説明 |
| :- | :- | :- |
| storage sketch: out.id | any | 選択したボタンのid |
| storage sketch: out.item | Item | 選択したアイテムのNBT |
| storage sketch: out.items | Item[] | 選択後のメニューに含まれる外部のアイテムのリスト |
| storage sketch: out.type | "CLICK" \| "DROP" | 選択の種類（クリックかドロップ） |

## 注意
- このデータパックは、依存ライブラリ [Close Detector](https://github.com/Ai-Akaishi/CloseDetector) より優先度を高く設定しないと正常に動作しません

## ライセンス
[CC0-1.0 License](LICENSE)
