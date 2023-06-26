# This is an example sidebar from a page in the app.
#
# Try to keep tabs grouped, for easier navigation.

template_page_sidebar <- sidebarPanel(
    width = 3, # if this gets changed, make sure to change the corresponding value in the main panel: total <= 12
    h3("Filters"),
    # include filters here
    textInput(
        inputId = "text_1",
        label = "Text Box",
        placeholder = "Insert text here"
    ),
    radioButtons(
        inputId = "radio_1",
        label = "Radio Button",
        choices = c("Blank", "Test 1", "Test 2"),
        selected = "Blank"
    )
)