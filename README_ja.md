日本語 | [English](README.md)
<br><br/>

<div align=center>

# Sketch
インベントリメニューを簡単に構築するための mcfunction フレームワーク

![Sketch v2.0.0_ja](https://user-images.githubusercontent.com/74240663/229465231-a4b20e5b-0f1c-422d-a85e-499710039427.gif)  
この例のデータパックは [Example](Example) ディレクトリにあります

</div>

## 対応バージョン
- 1.20.4
- 1.20.3
- 1.20.2
- 1.20.1
- 1.20
- 1.19.4

## ダウンロード
[Releases](https://github.com/rarula/Sketch/releases) を参照してください

## 依存ライブラリ
このデータパックを使用するためには、以下のデータパックを導入する必要があります
- 赤石愛 様：
  - [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
  - [Close Detector](https://github.com/Ai-Akaishi/CloseDetector) (MIT License)
  - [Player Item Tuner](https://github.com/Ai-Akaishi/PlayerItemTuner) (MIT License)

## 使い方
```mcfunction
#> menu:main/

item replace block 10000 0 10000 container.0 with minecraft:gray_stained_glass_pane
data modify storage sketch: in.key set value "f"
function sketch:api/register_item/button

item replace block 10000 0 10000 container.0 with minecraft:gold_block
data modify storage sketch: in.key set value "G"
data modify storage sketch: in.listener set value "give"
function sketch:api/register_item/button


data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage sketch: in.contents append value [f, -, -, -, G, -, -, -, f]
data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]

data modify storage sketch: in.id set value "main"
function sketch:api/build/auto
```
```mcfunction
#> menu:main/listener

execute if data storage sketch: callback{listener:"give"} run give @s minecraft:gold_block 1
```

詳しい使い方は[こちら](https://github.com/rarula/Sketch/wiki/Tutorial)を参照してください

## 注意
- 座標 10000 10000 をforceloadし、以下の座標にシュルカーボックスを配置します
    - 10000 0 10000
    - 10000 1 10000
    - 10000 2 10000

## 以前のバージョンの Sketch について
以前のバージョンの Sketch を使っていた場合、以下のコマンドを実行することで、不要になったオブジェクトを削除できます。
```mcfunction
scoreboard objectives remove SketchDrop
scoreboard objectives remove SketchId

setblock 10000 -64 10000 minecraft:air
```

## 連絡
<https://twitter.com/rarula_>

## ライセンス
[CC0-1.0](LICENSE)
