#' Server for HiDAP documents
#' 
#' @param input shinyserver input 
#' @param output shinyserver output
#' @param session shinyserver session
#' @param values reactive values
#' @author Omar Benites
#' @author Reinhard Simon
#' @export

fbdocs_server <- function(input,output,session, values){
  
  shell_exec <- function(path) {
    os = ifelse(Sys.info()['sysname'][[1]] == "Windows", "win", "mac")
    if(os == "win") {
      shell.exec(path)
    } else {
      system(paste("open", path))
    }
  }

  shiny::observeEvent(input$docpvsdic_launch, {
  
  withProgress(message = 'Exporting manual...', value = 0, {  
  incProgress(3/15)
    
  #path <- fbglobal::get_base_dir()
  #pvsdoc_file <- "Diccionario_PVS.docx"
  ruta <- system.file("extdata", "PVS_Dictionary.pdf", package = "fbdocs")
  #path <- paste(path, pvsdoc_file, sep = "\\")
  shell_exec(ruta)
  
    })
  })
  
  shiny::observeEvent(input$dochidap_install_launch_en, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Installation_Install_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell_exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$dochidap_install_launch_es, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Instalacion_Instalar_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell_exec(ruta)
      
    })
  })
  
  shiny::observeEvent(input$dochidap_navig_launch_en, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Tutorial_Navigate_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell_exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$dochidap_navig_launch_es, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "Tutorial_Navegar_HIDAP.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell_exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$docpvsdic_launch, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "PVS_ Dictionary.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  
  shiny::observeEvent(input$docpvscriteria_launch, {
    
    withProgress(message = 'Exporting manual...', value = 0, {  
      incProgress(3/15)
      
      #path <- fbglobal::get_base_dir()
      #pvsdoc_file <- "Diccionario_PVS.docx"
      ruta <- system.file("extdata", "PVS_Selection_Criteria.pdf", package = "fbdocs")
      #path <- paste(path, pvsdoc_file, sep = "\\")
      shell.exec(ruta)
      
    })
  })
  
  
  
  
  
}