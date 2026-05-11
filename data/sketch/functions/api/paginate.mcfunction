#> sketch:api/paginate
#
# Slices a list of item keys to the current page window.
# Uses sketch:util/array/slice internally.
#
# @input
#   storage sketch:data in
#       items: string[]
#           Full list of item keys
#       page: int
#           Current page (0-indexed)
#       size?: int
#           Items per page (Default: 7)
#
# @output
#   storage sketch:data out
#       items: string[]
#           Item keys for the current page
#       has_prev: boolean (0b / 1b)
#           Whether a previous page exists
#       has_next: boolean (0b / 1b)
#           Whether a next page exists
#
# @api

function sketch:core/api/paginate/_
