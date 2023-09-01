shinyServer(
 pageWithSidebar(
 headerPanel("PlayerUnknown's Battlegrounds (PUBG) - 'Win' or 'Lose'"),
 
 sidebarPanel(
 selectInput("player","Number of Players",
 choices=c("Solo","Duo","Squad")),
 selectInput("drive","Will you Drive",
 choices=c("Yes","No")),
 selectInput("size","Match Time",
 choices=c("Small (<33)","Medium (33-66)","Big (>66)"))
 ),
 
 mainPanel(tabsetPanel(type="tab",
 tabPanel("Analysis",uiOutput("tb")),
 tabPanel("Summary", uiOutput("sb"))))
 )
)
