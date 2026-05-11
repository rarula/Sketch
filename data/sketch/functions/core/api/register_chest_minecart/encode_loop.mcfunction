#> sketch:core/api/register_chest_minecart/encode_loop
# @within function sketch:core/api/register_chest_minecart/register
# @within function sketch:core/api/register_chest_minecart/encode_loop

# Write current bit number to storage (for macro)
    execute store result storage sketch:temp _rbit int 1 run scoreboard players get $_rbit Sketch

# Set tag corresponding to current bit (macro)
    function sketch:core/api/register_chest_minecart/encode_bit with storage sketch:temp
    data remove storage sketch:temp _rbit

# Shift to next bit (×2 → left shift 1)
    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch

# Repeat until bit 0
    scoreboard players remove $_rbit Sketch 1
    execute if score $_rbit Sketch matches 0.. run function sketch:core/api/register_chest_minecart/encode_loop
