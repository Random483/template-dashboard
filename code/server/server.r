# server.r
# This file builds the functions used within the dashboard.
# Supporting code located in ./code/server/
# separating out the functions like this makes the dashboard code easier to navigate.
# I have tried in the past having a long server.r file and it was a nightmare to update.  This is simpler.
#
# the "local = TRUE" element of the function forces the code to be treated as if it was within this file.
# Without this line, the functions will break.

server <- function(input, output, session) {

    # Load in server functions, as per this template
    source("./code/server/functions/observe_select.r", local = TRUE)

    # Load in render functions for display outputs, as per the below template
    source("./code/server/render/table_example.r", local = TRUE)
}
