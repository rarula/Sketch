#> sketch:core/api/paginate/_
#
# @within function sketch:api/paginate

#>
# @private
    #declare score_holder Pag_Total
    #declare score_holder Pag_Page
    #declare score_holder Pag_Size
    #declare score_holder Pag_Start
    #declare score_holder Pag_End


# Default size
    execute unless data storage sketch:data in.size run data modify storage sketch:data in.size set value 7

# Load scores
    execute store result score Pag_Total Sketch if data storage sketch:data in.items[]
    execute store result score Pag_Page Sketch run data get storage sketch:data in.page
    execute store result score Pag_Size Sketch run data get storage sketch:data in.size

# start = page * size
    scoreboard players operation Pag_Start Sketch = Pag_Page Sketch
    scoreboard players operation Pag_Start Sketch *= Pag_Size Sketch

# end = start + size
    scoreboard players operation Pag_End Sketch = Pag_Start Sketch
    scoreboard players operation Pag_End Sketch += Pag_Size Sketch

# has_prev: page > 0
    execute if score Pag_Page Sketch matches 1.. run data modify storage sketch:data out.has_prev set value 1b
    execute if score Pag_Page Sketch matches ..0 run data modify storage sketch:data out.has_prev set value 0b

# has_next: end < total
    execute if score Pag_End Sketch < Pag_Total Sketch run data modify storage sketch:data out.has_next set value 1b
    execute unless score Pag_End Sketch < Pag_Total Sketch run data modify storage sketch:data out.has_next set value 0b

# Slice via util
    data modify storage sketch:util in.array set from storage sketch:data in.items
    execute store result storage sketch:util in.start int 1 run scoreboard players get Pag_Start Sketch
    execute store result storage sketch:util in.end int 1 run scoreboard players get Pag_End Sketch
    function sketch:util/array/slice
    data modify storage sketch:data out.items set from storage sketch:util out.array

# Reset
    scoreboard players reset Pag_Total Sketch
    scoreboard players reset Pag_Page Sketch
    scoreboard players reset Pag_Size Sketch
    scoreboard players reset Pag_Start Sketch
    scoreboard players reset Pag_End Sketch
    data remove storage sketch:util in
    data remove storage sketch:util out
    data remove storage sketch:data in
