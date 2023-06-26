# About tab
#
# This file calls a markdown page as the text is static within the app.
# This method is easier to read and code when you want to have a static text page.
# In this case, the markdown file is created using Quarto.  If you want to edit it,  edit the .Qmd file then render.

tab_about <- tabPanel(
    title = "About",
    icon = icon("question"),
    includeMarkdown("./code/ui/markdown/about.md")
)
