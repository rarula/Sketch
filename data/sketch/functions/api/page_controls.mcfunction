#> sketch:api/page_controls
#
# Appends a 9-slot navigation row to in.contents.
# The first slot uses prev_key if has_prev is true, otherwise filler_key.
# The last slot uses next_key if has_next is true, otherwise filler_key.
# The seven middle slots are always filled with filler_key.
#
# Designed to be called after sketch:api/paginate using its out.has_prev
# and out.has_next values.
#
# @input
#   storage sketch:data in
#       prev_key: string
#           Item key for the previous-page button
#       next_key: string
#           Item key for the next-page button
#       filler_key: string
#           Item key for inactive / filler slots
#       has_prev: boolean (0b / 1b)
#           Whether a previous page exists (from sketch:api/paginate out)
#       has_next: boolean (0b / 1b)
#           Whether a next page exists (from sketch:api/paginate out)
#
# @output
#   storage sketch:data in.contents
#       Appends one 9-slot navigation row
#
# @api

function sketch:core/api/page_controls/_
