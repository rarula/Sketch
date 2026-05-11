#> sketch:core/api/register_chest_minecart/register
# @within function sketch:core/api/register_chest_minecart/_

#>
# @private
    #declare score_holder $TempIndex

# Register executor
    tag @s add Sketch.Entity

# Assign Index (1..32767)
    scoreboard players add $MinecartIndex Sketch 1
    execute if score $MinecartIndex Sketch matches 32768 run scoreboard players set $MinecartIndex Sketch 1

# Assign Id
    scoreboard players operation @s Sketch.Id = $MinecartIndex Sketch

# Set each bit of Index as Filter.N-{0|1} tag (macro loop: bit 15→0)
    scoreboard players operation $TempIndex Sketch = $MinecartIndex Sketch
    scoreboard players operation $TempIndex Sketch *= $65536 Sketch
    scoreboard players set $_rbit Sketch 15
    function sketch:core/api/register_chest_minecart/encode_loop

# Reset
    scoreboard players reset $TempIndex Sketch
    scoreboard players reset $_rbit Sketch
