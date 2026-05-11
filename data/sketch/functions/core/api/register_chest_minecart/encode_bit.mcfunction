#> sketch:core/api/register_chest_minecart/encode_bit
# @macro
# @within function sketch:core/api/register_chest_minecart/encode_loop
#
# Determine bit value by sign (positive/negative) of $TempIndex,
# Set Sketch.Filter.$(_rbit)-{0|1} tag

$execute if score $TempIndex Sketch matches 0.. run tag @s add Sketch.Filter.$(_rbit)-0
$execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.$(_rbit)-1
