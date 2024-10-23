# Practice

# Shannon Walker
# 09.27.2024

library(shiny)
library(bslib)
library(bsicons)
#install.packages("DT")
library(DT)
library(ggplot2)
library(markdown)
#install.packages("markdown")
#install.packages("knitr")
#install.packages("knitr")
#install.packages("shinythemes")
library(shinythemes)
#install.packages("sortable")
library(sortable)

# May need to add shinyUI() function at top...

ui <- fluidPage(theme = bs_theme(bootswatch = "minty"),
        titlePanel("NAME OF LESSON HERE"),
        navbarPage("Start Here",
        tabPanel(icon("home"),
                 fluidRow(column(tags$img(src = "pictures/Dune_pic.jpg",
                                          width = "200px",
                                          height = "260px"),
                                          width = 2
                                          ),
                          column(
                            
                            br(),
                            
                            p("Welcome to the lesson! Today, we will be exploring how climate is changing the coastal landscape. We will hear from Dr. Natasha Woods about her
                              research about how climate is driving the expansion of a native shrub on barrier islands along the coast of Virginia, USA. Next, we will explore
                              the real data she and her co-author collected. You will create figures from the data, run statistical tests, and interpret the results. Lastly, we
                              will hear from Dr. Woods about her experience as a scientist."),
                            
                            br(),
                            
                            p("There is also an adpatation for this module which invites you to code in R to run the statistics and generate figures. If you don't 
                              know how to code or have limited experience", strong("don't worry!"), "The module uses a fill-in-the-blanks format and will walk you through the code 
                              step-by-step."),
                            
                            width = 8
                          ),
                          column(
                            br(),
                            p("The data used in this lesson are curated by the Long Term Ecological Research Network whose mission is to make data availble online with as few 
                              restrictions as possible. Learn more about the Long Term Ecological Research Network by clicking",
                              a(href = "https://lternet.edu/about/", "this link", target = "_blank", style = "color:black"),
                              width = 2),
                            width = 2
                          )
                                 ),
                 
                 hr(),
                 fluidRow(
                   column(
                   br(),
                   p("BACKGROUND INFORMATION HERE. EXPLANATION OF PROBLEM.",
                     width = 12),
                   width = 12
                 )
                 ),
                 
                 hr(),
                 p(em("Developed by"),br("Shannon Walker, Natasha Woods, and Alycia Lackey"),style="text-align:center; font-family: times")),
        
        ################### Part 1 ######################
        
        tabPanel("Part I",
                 fluidRow(column(width = 2),
                          column(
                            br(),
                            p("This section will be for the Pearson Correlation",
                              align = "center"),
                            width = 8
                          ),
                          column(width = 2))
                 ),

        ################### Part 2 ######################
        
        tabPanel("Part II",
                 fluidRow(column(width = 2),
                          column(
                            br(),
                            p("This section will be for the one-way ANOVA",
                              align = "center"),
                            width = 8
                          ),
                          column(width = 2))
        ),
        
        ################### Part 3 ######################
        
        tabPanel("Part III",
                 fluidRow(column(width = 2),
                          column(
                            br(),
                            p("This section will be for the linear regression",
                              align = "center"),
                            width = 8
                          ),
                          column(width = 2))
        ),
        
        ################### Part 4 ######################
        
        tabPanel("Part IV",
                 fluidRow(column(width = 2),
                          column(
                            br(),
                            p("This section will be for final interpretation",
                              align = "center"),
                            width = 8
                          ),
                          column(width = 2))
        ),
        
        ################### Part 5 ######################
        
        tabPanel("Part V",
                 fluidRow(column(width = 2),
                          column(
                            br(),
                            p("This section will be for the final part of the interview",
                              align = "center"),
                            width = 8
                          ),
                          column(width = 2))
        )
                 
        )
)


# may need to add shinyServer() around this at end

server <- function(input, output){
  
}


# Run the app ----
shinyApp(ui = ui, server = server)
