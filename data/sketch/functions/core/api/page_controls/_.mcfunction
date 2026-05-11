#> sketch:core/api/page_controls/_
#
# @within function sketch:api/page_controls

#>
# @private
    #declare score_holder $PageCtrl.Prev
    #declare score_holder $PageCtrl.Next

# Load has_prev and has_next into scores
    execute store result score $PageCtrl.Prev Sketch run data get storage sketch:data in.has_prev
    execute store result score $PageCtrl.Next Sketch run data get storage sketch:data in.has_next

# Copy full input into temp so macro can read filler_key alongside resolved keys
    data modify storage sketch:temp PageCtrl set from storage sketch:data in

# Resolve actual_prev: filler if has_prev is false, otherwise prev_key
    execute if score $PageCtrl.Prev Sketch matches 0 run data modify storage sketch:temp PageCtrl.actual_prev set from storage sketch:data in.filler_key
    execute if score $PageCtrl.Prev Sketch matches 1 run data modify storage sketch:temp PageCtrl.actual_prev set from storage sketch:data in.prev_key

# Resolve actual_next: filler if has_next is false, otherwise next_key
    execute if score $PageCtrl.Next Sketch matches 0 run data modify storage sketch:temp PageCtrl.actual_next set from storage sketch:data in.filler_key
    execute if score $PageCtrl.Next Sketch matches 1 run data modify storage sketch:temp PageCtrl.actual_next set from storage sketch:data in.next_key

# Append navigation row via macro
    function sketch:core/api/page_controls/row with storage sketch:temp PageCtrl

# Reset
    scoreboard players reset $PageCtrl.Prev Sketch
    scoreboard players reset $PageCtrl.Next Sketch
    data remove storage sketch:temp PageCtrl
    data remove storage sketch:data in.prev_key
    data remove storage sketch:data in.next_key
    data remove storage sketch:data in.filler_key
    data remove storage sketch:data in.has_prev
    data remove storage sketch:data in.has_next
