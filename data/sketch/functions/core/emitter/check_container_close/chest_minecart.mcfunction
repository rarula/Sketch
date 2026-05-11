#> sketch:core/emitter/check_container_close/chest_minecart
#
# Fire chest minecart closed action as event
#
# @within tag/function close_detector:on_closed

# Closed chest is a chest minecart -> Fire event
    execute if predicate open:chest_minecart run function sketch:core/handler/on_container_close/chest_minecart
