#> sketch:core/emitter/check_container_open/ender_chest
#
# Fire ender chest opened action as event
#
# @within tag/function close_detector:on_opened

# Opened chest is an ender chest -> Fire event
    execute if predicate open:ender_chest run function sketch:core/handler/on_container_open/ender_chest/_
