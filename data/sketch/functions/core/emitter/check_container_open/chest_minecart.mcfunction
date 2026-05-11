#> sketch:core/emitter/check_container_open/chest_minecart
#
# Fire chest minecart opened action as event
#
# @within advancement sketch:on_container_open

# Fire event
    function sketch:core/handler/on_container_open/chest_minecart/_

# Reset
    advancement revoke @s only sketch:on_container_open
