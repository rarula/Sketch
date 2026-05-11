#> sketch:api/title
#
# Shows a title and optional subtitle to the executing player.
# Similar to sketch:api/actionbar but uses the title/subtitle display.
#
# @input
#   storage sketch:data in
#       title: string
#           Title text (must not contain double-quote characters)
#       subtitle?: string
#           Subtitle text (Default: "") (must not contain double-quote characters)
#       fade_in?: int
#           Fade-in duration in ticks (Default: 10)
#       stay?: int
#           Stay duration in ticks (Default: 70)
#       fade_out?: int
#           Fade-out duration in ticks (Default: 20)
#
# @api

function sketch:core/api/title/_
