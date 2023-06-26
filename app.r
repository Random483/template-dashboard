# This file points to all other files to build the dashboard.

# Loads all source libraries / data / environmental variables
source("./code/global.r")

# Builds the UI of the app
source("./code/ui/ui.r")

# Builds the functions that run the app
source("./code/server/server.r")

# Actually run the app:
shinyApp(ui = ui, server = server)
