#' UI for HIDAP documentation
#' Returns user friendly ui
#' @author Omar Benites
#' @param type type of UI element, deault is a tab in a shinydashboard
#' @param title diaply title name
#' @param name UI TabName
#' @export
#'


fbdocs_ui <- function(type = "tab", title = "HIDAP Documents", name= "docshidap_fieldbooks"){

  #body <- dashboardBody(

  #shiny::tagList(
  shinydashboard::tabItem(tabName = name, title,

            shiny::fluidRow(
              shiny::column(width = 4,
                            shinydashboard::box(
                       title = "HIDAP Installation Manual", width = NULL, solidHeader = TRUE, status = "warning",
                       "", collapsible = TRUE,

                       shiny::fluidRow(
                         shiny::column(6,

                                  shiny::HTML("<b> Installation Manual (english):</b>"),

  
  shinydashboard::tabItem(tabName = name, h2(title),   
  
            fluidRow(
              column(width = 6,
                     box(
                       title = "HIDAP Installation Manual", width = NULL, solidHeader = TRUE, status = "warning",
                       "", collapsible = TRUE,
                       
                       fluidRow(
                           column(6,  
                                  
                                  shiny::HTML("<b>English</b>"),

                                  shiny::br(),
                                  shiny::actionButton("dochidap_install_launch_en", "Open",
                                                          icon = shiny::icon("folder-open", lib = "glyphicon"),
                                                          width = "100px",
                                                          style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                                                          ),
                                  shiny::br(),
                                  shiny::br(),
                                  shiny::HTML("<b>Spanish</b>"),
                                  shiny::br(),
                                  shiny::actionButton("dochidap_install_launch_es", "Open",
                                                      icon = shiny::icon("folder-open", lib = "glyphicon"),
                                                      width = "100px",
                                                      style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                                  )#,





                            )#,


                       )
                     ),


                     shinydashboard::box(
                       title = "HIDAP Navigate Manual", width = NULL, solidHeader = TRUE, status = "warning",
                       "", collapsible = TRUE,

                       shiny::fluidRow(
                         shiny::column(6,

                                shiny::HTML("<b> Navigate Manual (english):</b>"),

                     
                     box(
                       title = "HIDAP user's manual", width = NULL, solidHeader = TRUE, status = "warning",
                       "", collapsible = TRUE,
                       
                       fluidRow(
                         column(6,  
                                
                                shiny::HTML("<b>English</b>"),

                                shiny::br(),
                                shiny::actionButton("dochidap_navig_launch_en", "Open",
                                                    icon = shiny::icon("folder-open", lib = "glyphicon"),
                                                    width = "100px",
                                                    style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                                ),
                                shiny::br(),
                                shiny::br(),
                                shiny::HTML("<b>Spanish</b>"),
                                shiny::br(),
                                shiny::actionButton("dochidap_navig_launch_es", "Open",
                                                    icon = shiny::icon("folder-open", lib = "glyphicon"),
                                                    width = "100px",
                                                    style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                                )#,



                         )#,


                       )
                     ),


                     shinydashboard::box(
                       title = "PVS Documentation", width = NULL, solidHeader = TRUE, status = "primary",
                       "Participatory Varietal Selection Documentation (PVS)", collapsible = TRUE,

                       shiny::fluidRow(
                         shiny::column(6,  shiny::actionButton("docpvsdic_launch", "Open",
                                                        icon = shiny::icon("folder-open", lib = "glyphicon"),
                                                        width = "100px",
                                                        style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                         ))
                       )
                      )















                            
                     box(
                       title = "Participatory Varietal Selection Documentation", width = NULL, solidHeader = TRUE, status = "primary",
                       "", collapsible = TRUE,
                       
                       fluidRow(
                         column(6,  
                                
                                shiny::HTML("<b>Participatory Varietal Selection: Dictionary</b>"),
                                shiny::br(),
                                
                                shiny::actionButton("docpvsdic_launch", "Open",
                                                        icon = icon("folder-open", lib = "glyphicon"),
                                                        width = "100px",
                                                        style="color: #fff; background-color: #337ab7; border-color: #2e6da4"),
                                shiny::br(),
                                shiny::br(),
                                shiny::HTML("<b>Participatory Varietal Selection: Selection Criteria</b>"),
                                shiny::br(),
                                shiny::actionButton("docpvscriteria_launch", "Open",
                                                    icon = icon("folder-open", lib = "glyphicon"),
                                                    width = "100px",
                                                    style="color: #fff; background-color: #337ab7; border-color: #2e6da4"
                                )#,
                                
                                
                                
                         )  
                       )
                      )#,
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     

                     # box(
                     #   width = NULL, background = "black",
                     #   "Otros documentos 2"
                     # )
              ) #,

              # column(width = 4,
              #        box(
              #          status = "warning", width = NULL,
              #          "Otros documentos 3"
              #        ),
              #        box(
              #          title = "Title 3", width = NULL, solidHeader = TRUE, status = "warning",
              #          "Otros documentos 4"
              #        ),
              #        box(
              #          title = "Title 5", width = NULL, background = "light-blue",
              #          "Otros documentos 5"
              #        )
              # ),
              #
              # column(width = 4,
              #        box(
              #          title = "Title 2", width = NULL, solidHeader = TRUE,
              #          "Otros documentos 6"
              #        ),
              #        box(
              #          title = "Title 6", width = NULL, background = "maroon",
              #          "Otros documentos 7"
              #        )
              #   )
            )
      )

 # )


}



#
# # Preview the UI in the console
# shinyApp(ui = ui, server = function(input, output) { })
