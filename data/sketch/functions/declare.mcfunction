#> sketch:declare
# @private

#>
# @public
    #alias vector Sketch 10000 0 10000

#>
# @public
    #declare storage sketch:data

#>
# @public
    #declare tag Sketch.Target
    #declare tag Sketch.Player

#>
# @public
    #declare item_modifier sketch:register_item/normal
    #declare item_modifier sketch:register_item/button

#>
# @public
    #declare tag/function sketch:handler/on_open/chest_minecart
    #declare tag/function sketch:handler/on_open/ender_chest
    #declare tag/function sketch:handler/on_close/chest_minecart
    #declare tag/function sketch:handler/on_close/ender_chest
    #declare tag/function sketch:handler/on_select/chest_minecart
    #declare tag/function sketch:handler/on_select/ender_chest
    #declare tag/function sketch:set_menu/chest_minecart
    #declare tag/function sketch:set_menu/ender_chest
    #declare tag/function sketch:set_variable/chest_minecart
    #declare tag/function sketch:set_variable/ender_chest


#> Shulker box for item storage
# @within * sketch:**
    #alias vector LocalContainer 10000 1 10000

#> Shulker box for menu creation
# @within * sketch:**
    #alias vector MenuContainer 10000 2 10000


#> Storage for data
# @within * sketch:**
    #declare storage sketch:core

#> Storage for temporary processing
# @within * sketch:**
    #declare storage sketch:temp
    #declare storage sketch:temp/build
    #declare storage sketch:temp/set_menu

#> Storage for util
# @within * sketch:**
    #declare storage sketch:util

#> Storage for util temporary processing
# @within * sketch:util/**
    #declare storage sketch:util/temp


#> Scoreboards
# @within * sketch:**
    #declare objective Sketch
    #declare objective Sketch.Id
    #declare objective Sketch.Drop

#> Score holders
# @within * sketch:**
    #declare score_holder $LocalItemSlotIndex
    #declare score_holder $MinecartIndex

#> Constants
# @within * sketch:**
    #declare score_holder $65536
    #declare score_holder $_gcs
    #declare score_holder $_rbit


#> Tag for registered entities
# @within * sketch:**
    #declare tag Sketch.Entity

#> Tag for entity identification
# @within * sketch:**
    #declare tag Sketch.Filter.0-0
    #declare tag Sketch.Filter.1-0
    #declare tag Sketch.Filter.2-0
    #declare tag Sketch.Filter.3-0
    #declare tag Sketch.Filter.4-0
    #declare tag Sketch.Filter.5-0
    #declare tag Sketch.Filter.6-0
    #declare tag Sketch.Filter.7-0
    #declare tag Sketch.Filter.8-0
    #declare tag Sketch.Filter.9-0
    #declare tag Sketch.Filter.10-0
    #declare tag Sketch.Filter.11-0
    #declare tag Sketch.Filter.12-0
    #declare tag Sketch.Filter.13-0
    #declare tag Sketch.Filter.14-0
    #declare tag Sketch.Filter.15-0
    #declare tag Sketch.Filter.0-1
    #declare tag Sketch.Filter.1-1
    #declare tag Sketch.Filter.2-1
    #declare tag Sketch.Filter.3-1
    #declare tag Sketch.Filter.4-1
    #declare tag Sketch.Filter.5-1
    #declare tag Sketch.Filter.6-1
    #declare tag Sketch.Filter.7-1
    #declare tag Sketch.Filter.8-1
    #declare tag Sketch.Filter.9-1
    #declare tag Sketch.Filter.10-1
    #declare tag Sketch.Filter.11-1
    #declare tag Sketch.Filter.12-1
    #declare tag Sketch.Filter.13-1
    #declare tag Sketch.Filter.14-1
    #declare tag Sketch.Filter.15-1


#> advancement
# @within * sketch:**
    #declare advancement sketch:on_container_open

#> item_modifier
# @within * sketch:**
    #declare item_modifier sketch:set_listener

#> tag/item
# @within * sketch:**
    #declare tag/item sketch:all


#> OhMyDat
# @within * sketch:**
    #declare storage oh_my_dat:
    #declare tag/function oh_my_dat:please

#> CloseDetector
# @within * sketch:**
    #declare predicate open:chest_minecart
    #declare predicate open:ender_chest


#> v2.1.0 additions
# @public
    #declare function sketch:api/refresh_menu
    #declare function sketch:api/fill_row
    #declare function sketch:api/sound


#> v2.2.0 additions
# @public
    #declare function sketch:api/fill_border
    #declare function sketch:api/actionbar
    #declare function sketch:api/paginate


#> v2.3.0 additions
# @public
    #declare function sketch:api/title
    #declare function sketch:api/fill_checker
    #declare function sketch:api/page_controls
