
library(knitr)
library(quarto)

print('port 9906: Analyse Lehrendaten')
hier <- paste0(here::here(),'/') # Slash am Ende des Pfades muss manuell hinzugefügt werden !

# if(Sys.getenv("COMPUTERNAME") == 'ATHENB0103C') {
#   hier <- 'C:/Users/vrablicz_r/git_repositories/Shiny_SelfService'
# }
# if(Sys.getenv("COMPUTERNAME") == 'ATHEWS0462P') {
#   hier <- 'C:/Users/vrablicz_r/git_repositories/Shiny_SelfService'
# }

quarto::quarto_serve(input = paste0(hier,'shiny_app_Lehren.qmd'),
                     render = TRUE,
                     port= 9906,          # Der Port muss auch freigegeben sein!
                     host= '0.0.0.0',     # ACHTUNG: im Browser muss dann localhost:9906 eingegeben werden damit das sichtbar wird
                     browse = FALSE)