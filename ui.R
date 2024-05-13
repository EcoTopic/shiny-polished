# ui.R

# define your Shiny app UI
ui <- fluidPage(
  fluidRow(
    column(
      12,
      h1("Your Shiny App UI")
    ),
    column(
      6,
      h1("Hello Shiny!")
    ),
    column(
      6,
      br(),
      actionButton(
        "sign_out",
        "Sign Out",
        icon = icon("sign-out-alt"),
        class = "pull-right"
      )
    )
  )
)

# customize your sign in page UI with logos, text, and colors.
my_custom_sign_in_page <- sign_in_ui_default(
  color = "#006CB5",
  company_name = "EcoTopic",
  logo_top = tagList(
    tags$img(
      src = "images/logo.png",
      alt = "EcoTopic Logo",
      style = "width: 125px; margin-top: 30px; margin-bottom: 30px;"
    ),
    tags$script(src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"),
    tags$script(src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.waves.min.js"),
    tags$script('
        VANTA.WAVES({
          el: "body",
          mouseControls: true,
          touchControls: true,
          gyroControls: false,
          minHeight: 200.00,
          minWidth: 200.00,
          scale: 1.00,
          scaleMobile: 1.00,
          waveSpeed: 1.45
        })
      ')
  ),
  logo_bottom = tags$img(
    src = "images/logo_bottom.png",
    alt = "EcoTopic Logo bottom",
    style = "width: 300px; margin-bottom: 15px;"
  ),
  icon_href = "images/logo_bottom.png"#,
  #background_image = "images/Northern_Lights_02.jpeg"
)



# ui <- fluidPage(
#   fluidRow(
#     column(
#       6,
#       h1("Hello Shiny!")
#     ),
#     column(
#       6,
#       br(),
#       actionButton(
#         "sign_out",
#         "Sign Out",
#         icon = icon("sign-out-alt"),
#         class = "pull-right"
#       )
#     ),
#     column(
#       12,
#       verbatimTextOutput("user_out")
#     )
#   )
# )

secure_ui(ui,
          sign_in_page_ui = my_custom_sign_in_page)