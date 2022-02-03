library(shiny)

ui <- fluidPage(
  selectInput(
    inputId = 'selected_sku', label = "Select SKU:",
    choices = unique(sales_df$pcode)
  ),
  selectInput(
    inputId = 'selected_store', label = "Select Store:",
    choices = unique(sales_df$scode)
  ),
  plotOutput("ts_plot"),
  verbatimTextOutput("debug")

)
