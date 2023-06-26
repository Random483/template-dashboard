# Landing Page tab
#
# This file calls a markdown page as the text is static within the app.
# This method is easier to read and code when you want to have a static text page.

tab_landing_page <- tabPanel(
    title = "Landing Page",
    icon = icon("house"),
    includeMarkdown("./code/ui/markdown/landing_page.md")
)
