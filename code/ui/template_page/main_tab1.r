# This is an example tab from a page in the app.
#
# Try to keep tabs grouped, for easier navigation.

template_page_tab1 <- tabPanel(
    title = "Tab 1",
    h4("Tab 1"),
    tableOutput(
        "example" # ./code/server/render/table_example.r
    )
)