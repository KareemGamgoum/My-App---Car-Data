
library(markdown)

shinyUI(fluidPage("Car Details",
                   tabPanel("Table",
                            sidebarLayout(
                                    sidebarPanel(
                                            helpText("Car Parameters"),
                                            sliderInput('disp', 'Displacement', min=50, max=500, value=c(50,500), step=10),
                                            sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
                                            checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                            checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                                    ),
                                    
                                    
                                    mainPanel(
                                            dataTableOutput('table')
                                    )
                            )
                   )
)
) 




