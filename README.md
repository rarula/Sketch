# InventoryGui
チェスト付きトロッコによるインベントリメニューを簡単に作成するためのデータパック

## 対応バージョン
- 1.18.1

## 依存ライブラリ
- 赤石愛氏 : [Oh! My Dat! 1.18](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)

## 使い方
### Guiを設定
> **1.** 座標 1 1 1 に存在するシュルカーボックス内に、Guiに配置されるアイテムを設定します
> ```mcfunction
> item replace block 1 1 1 container.13 with minecraft:diamond
> ```

> **2.** クリック時になんらかの動作をさせたいアイテムにはidを設定します
> ```mcfunction
> item replace block 1 1 1 container.13 with minecraft:diamond{InventoryGui:{id:"diamond"}}
> ```

> **3.** `function inventorygui:api/create` を実行し、Guiを作成します
> ```mcfunction
> item replace block 1 1 1 container.13 with minecraft:diamond{InventoryGui:{id:"diamond"}}
> function inventorygui:api/create
> ```

### クリック時の動作を設定
> **1.** `#inventorygui:callback` に、クリック時に呼び出されるファイルを追加します
> ```json
> {
>     "values": [
>         "example:gui/diamond/check"
>     ]
> }
> ```

> **2.** クリック時に呼び出されるファイル内でidを確認し、それぞれの動作を設定します  
> （`inventorygui: id` にはクリックされたアイテムのidが入っています）
>
> ```mcfunction
> #> example:gui/diamond/check
>
> execute if data storage inventorygui: {id:"diamond"} run ...
> ```

## 既知のバグ
- ボタンをオフハンドに直接持ち替えた場合、ゴーストアイテムが発生する
