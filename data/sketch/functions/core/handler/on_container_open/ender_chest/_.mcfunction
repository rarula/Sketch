#> sketch:core/handler/on_container_open/ender_chest/_
#
# Called when an ender chest is opened
#
# @within function sketch:core/emitter/check_container_open/ender_chest

# Set opened chest type in OhMyDat
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType set value "EnderChest"


## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Callback
    function #sketch:handler/on_open/ender_chest


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
