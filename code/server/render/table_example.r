# Render Table
#
# This code demonstrates how to include a render output within the dashboard.

output$example <- renderTable({
    mtcars
})
