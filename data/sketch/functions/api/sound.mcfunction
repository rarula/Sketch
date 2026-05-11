#> sketch:api/sound
#
# Plays a sound to the executing player. Useful for UI feedback in menus.
#
# @input
#   storage sketch:data in
#       sound: string
#           Sound resource location (e.g. "minecraft:ui.button.click")
#       source?: string
#           Sound source category (Default: "master")
#       volume?: float
#           Volume multiplier (Default: 1.0)
#       pitch?: float
#           Pitch multiplier (Default: 1.0)
#
# @api

function sketch:core/api/sound/_
