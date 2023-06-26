# This is an example page in the app.
#
# Try to keep tabs from a page grouped in their own folder for easier navigation.

# source files for the various tabs:
source("./code/ui/template_page/sidebar.r")   # Sidebar
source("./code/ui/template_page/main_tab1.r") # Main Panel, tab 1
source("./code/ui/template_page/main_tab2.r") # Main Panel, tab 2

# This sets out the overall layout of the main page

tab_template_page <- tabPanel(
    title = "Template Page",
    icon = icon("code-compare"),

    # Build the page layout
    sidebarLayout(
        template_page_sidebar, # ./code/ui/template_page/sidebar.r
        mainPanel(
            width = 9, # if this gets changed, make sure to change the value in panel_sidebar.r: total <= 12
            title = "Main Panel",
            h4("Main Panel Title"),
            tabsetPanel(
                template_page_tab1, # ./code/ui/template_page/main_tab1.r
                template_page_tab2, # ./code/ui/template_page/main_tab2.r
            )
        )
    )
)
