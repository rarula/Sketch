#> sketch:api/actionbar
#
# Shows an actionbar message to the executing player.
# Useful for immediate feedback when a button is clicked.
#
# @input
#   storage sketch:data in
#       text: string
#           Message text (must not contain double-quote characters)
#       color?: string
#           Text color name (Default: "white")
#           e.g. "red", "green", "yellow", "gold", "aqua", "gray"
#
# @api

function sketch:core/api/actionbar/_
