shinyServer(
function(input,output,session){
 
 output$tb <- renderUI({
 playertype<- input$player
 drivetype<- input$drive
 sizetype<- input$size
 
 if(playertype == "Solo"){
 tags$img(src='pubg1.png',height="600px", width="900px")}
 if(playertype == "Duo"){
 tags$img(src='pubg1.png',height="600px", width="900px")}
 if(playertype == "Squad"){
 tags$img(src='pubg1.png',height="600px", width="900px")}
 if(drivetype == "Yes"){
 tags$img(src='pubg2.png',height="600px", width="900px")}
 if(drivetype == "No"){
 tags$img(src='pubg2.png',height="600px", width="900px")}
 if(sizetype == "Small (<33)"){
 tags$img(src='pubg3.png',height="600px", width="900px")}
 if(sizetype == "Medium (33-66)"){
 tags$img(src='pubg3.png',height="600px", width="900px")}
 if(sizetype == "Big (>66)"){
 tags$img(src='pubg3.png',height="600px", width="900px")}
 })

 output$sb <- renderUI({
 playertype<- input$player
 drivetype<- input$drive
 sizetype<- input$size
 
 if(sizetype == "Small (<33)"){
 tags$img(src='text.png',height="100px", width="900px")
 }
 if(sizetype == "Medium (33-66)"){
 tags$img(src='text.png',height="100px", width="900px")
 }
 if(sizetype == "Big (>66)"){
 tags$img(src='text.png',height="100px", width="900px")
 } 
 })
})
