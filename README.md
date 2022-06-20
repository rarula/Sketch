<div align=center>

# Sketch
チェスト付きトロッコによるインベントリメニューを簡単に作成するためのフレームワーク

![Sketch v1.0.0](https://user-images.githubusercontent.com/74240663/174467815-c4a93609-aff7-4e39-8395-7bcda4f26211.gif)  
この例のデータパックは [Example](Example) ディレクトリにあります

</div>

## 対応バージョン
- 1.19

## ダウンロード
[Releases](https://github.com/raruData/Sketch/releases) を参照してください

## 依存ライブラリ
このデータパックを使用するためには、以下のライブラリを導入する必要があります
- 赤石愛様：
  - [Close Detector 1.19](https://github.com/Ai-Akaishi/CloseDetector) (MIT License)
  - [Oh! My Dat! 1.19](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
  - [Player Item Tuner 1.19](https://github.com/Ai-Akaishi/PlayerItemTuner) (MIT License)

## 使い方
### チェスト付きトロッコを用意する
1. メニューを設定したいチェスト付きトロッコを実行者として、function `sketch:api/register` を呼び出します
```mcfunction
execute as @e[type=minecraft:chest_minecart] run function sketch:api/register
```

### メニューを作成する
1. 座標 10000 -64 10000 に設置されているコンテナに、メニューに配置したいアイテムを設定します
```mcfunction
#> example:menu/foo

# 普通のアイテムを配置
item replace block 10000 -64 10000 container.10 with minecraft:dirt
```

2. 選択時に何らかの動作をさせたいアイテムには、item_modifier `sketch:button` を適用します
```mcfunction
#> example:menu/foo
...

# ボタンを配置
item replace block 10000 -64 10000 container.12 with minecraft:cobblestone
item modify block 10000 -64 10000 container.12 sketch:button
```

3. コンテナにアイテムを設定し終えたら function `sketch:api/create` を呼び出します
```mcfunction
#> example:menu/foo
...

# 設定したメニューを作成する
function sketch:api/create
```

### ボタンの動作を設定する
1. item_modifier `sketch:button` が適用されるアイテムに、ボタンを識別するためのidを設定します  
idはどんな型でも設定できます
```mcfunction
#> example:menu/foo
...

# ボタンを配置
# "COBBLESTONE_BUTTON" をidとして設定
item replace block 10000 -64 10000 container.12 with minecraft:cobblestone{Sketch:{id:"COBBLESTONE_BUTTON"}}
item modify block 10000 -64 10000 container.12 sketch:button
```

2. `data/sketch/tags/functions/on_select.json` に、ボタン選択時に呼び出されるファイルを追加します  
```json
{
    "values": [
        "example:handler/on_select"
    ]
}
```

3. 追加したファイルが呼び出されるとき、storage `sketch: out.id` には選択されたボタンのidが入っているので、ボタンごとに動作を設定することができます
```mcfunction
#> example:handler/on_select

# 選択したボタンのidが "COBBLESTONE_BUTTON" であれば...な処理をする
execute if data storage sketch: out{id:"COBBLESTONE_BUTTON"} run ...
```

### メニューを表示する
1. `data/sketch/tags/functions/on_open.json` に、チェスト付きトロッコを開いた時に呼び出されるファイルを追加します
```json
{
    "values": [
        "example:handler/on_open"
    ]
}
```

2. [メニューを作成する](#メニューを作成する) で作成したファイルを呼び出します  
このとき、開いたチェスト付きトロッコにのみメニューが作成されます
```mcfunction
#> example:handler/on_open

# 開いたチェスト付きトロッコにのみメニューを作成し、表示する
function example:menu/foo
```

### その他
Sketchは、インベントリメニューの構成を容易にするためのAPIやイベントを提供します
- [APIについて](https://github.com/raruData/Sketch/wiki/APIs)
- [イベントについて](https://github.com/raruData/Sketch/wiki/Events)

## 注意
- 座標 10000 10000 をforceloadし、座標 10000 -64 10000 にシュルカーボックスを配置します

## 連絡
https://twitter.com/raruData_

## ライセンス
[CC0-1.0](LICENSE)
