# ui.r
# This file builds the user interface for the dashboard.
# Plan: To use a similar format to the markdown dashboards shared.
#   - Header across the top
#   - menu down the left
#   - DfE/AF colour scheme
#   - filters below the header
# Supporting code located in ./code/ui/

# libraries
require(shiny)

css <- includeCSS("./custom.css")

# tabs
source("./code/ui/tabs/landing_page.r")
source("./code/ui/tabs/template_page.r")
source("./code/ui/tabs/about.r")

# User Interface
ui <- fluidPage(
    # set theme, including css
    theme = shinythemes::shinytheme("cerulean"),
    tags$head(
        tags$style(css),
        tags$link(
            rel = "stylesheet",
            type = "text/css",
            href = "www/style.css"
        ),
        # This sets the name of the tab in your browser
        tags$title("Dashboard: Template"),
        # This is an attempt at setting the icon in the browser: doesn't yet work
        tags$head(tags$link(rel = "icon", type = "image/png", sizes = "32x32", href = "/DfE Logo.png"))


    ),

    # Load the pages of the dashboard
    navbarPage(
        title = "Dashboard: Template",
        tab_landing_page, # ./code/ui/landing_page.r
        tab_template_page, # ./code/ui/tab_template_page.r
        tab_about # ./code/ui/tab_about.r
    )
)