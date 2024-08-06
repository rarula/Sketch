[日本語](README_ja.md) | English
<br><br/>

<div align=center>

# Sketch
A mcfunction framework for easily building inventory menus

![Sketch v2 0 0_en](https://user-images.githubusercontent.com/74240663/230566348-ad6e083e-448d-4b90-b772-df668f542ea5.gif)  
The datapack for this example is located in the [Example](Example) directory

</div>

## Supported Versions
- 1.20.4
- 1.20.3
- 1.20.2
- 1.20.1
- 1.20
- 1.19.4

## Download
See [Releases](https://github.com/rarula/Sketch/releases)

## Dependencies
To use this datapack, the following datapacks must be installed
- [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat) (MIT License)
- [Close Detector](https://github.com/Ai-Akaishi/CloseDetector) (MIT License)
- [Player Item Tuner](https://github.com/Ai-Akaishi/PlayerItemTuner) (MIT License)

## Usage
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

For detailed instructions, see [here](https://github.com/rarula/Sketch/wiki/Tutorial-%5BEN%5D)

## Cautionary Points
- Forceload the coordinates 10000 10000 and place the shulker box at the following coordinates
    - 10000 0 10000
    - 10000 1 10000
    - 10000 2 10000

## About Previous Versions
If you have been using an previous version of Sketch, you can delete objects that are no longer needed by running the following command.
```mcfunction
scoreboard objectives remove SketchDrop
scoreboard objectives remove SketchId

setblock 10000 -64 10000 minecraft:air
```

## Contact
<https://twitter.com/rarula_>

## License
[CC0-1.0](LICENSE)
