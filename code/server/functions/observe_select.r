# Observe Select:
#
# This code is an example of an observe function

observe({
    if (input$radio_1 == "Blank") {
        x <- ""
    } else if (input$radio_1 == "Test 1") {
        x <- "Test"
    } else if (input$radio_1 == "Test 2") {
        x <- "The quick brown fox jumped over the lazy dog"
    }
    # update selection
    updateTextInput(
        inputId = "text_1",
        value = x
    )
})
