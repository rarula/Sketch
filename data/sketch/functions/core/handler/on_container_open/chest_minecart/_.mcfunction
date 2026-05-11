#> sketch:core/handler/on_container_open/chest_minecart/_
#
# Called when a chest minecart is opened
#
# @within function sketch:core/emitter/check_container_open/chest_minecart

# Set opened chest type in OhMyDat
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType set value "Minecart"


## Set isInCallback
    function sketch:core/common/is_in_callback/set

## Search for opened chest minecart
    function sketch:core/handler/on_container_open/chest_minecart/filter/find


# Callback
    function #sketch:handler/on_open/chest_minecart


## Remove Sketch.Target
    function sketch:core/common/sketch_target/reset

## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
