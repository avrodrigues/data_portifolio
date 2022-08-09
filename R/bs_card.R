
# card reference:
# https://getbootstrap.com/docs/5.0/components/card/

# <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
#   <div class="card-header">Header</div>
#     <div class="card-body">
#       <h5 class="card-title">Primary card title</h5>
#         <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
#   </div>
#   <div class="card-footer">
#     <a href="#" class="btn btn-primary">Go somewhere</a>
#   </div>
# </div>

library(htmltools)
library(glue)

bs_card <- function(
    font_color = "white",
    status = "primary",
    header_text = NULL,
    title_text,
    body_text,
    btn_status = "danger",
    btn_text = "OK",
    btn_href = "#",
    disabled = FALSE
){

 disabled_class <- ifelse(disabled, " disabled", "")

  htmltools::div(
    class=glue::glue("card text-{font_color} bg-{status}"),
    style="max-width: 18rem;",

    if (!is.null(header_text)){
      htmltools::div(
        class="card-header",
        header_text
      )
    },


    htmltools::div(
      class="card-body",

      htmltools::h3(
        class="card-title",
        title_text
      ),
      htmltools::p(
        class="card-text",
        body_text
      )
    ),
    htmltools::div(
      class="card-footer",
      htmltools::tags$a(
        href = btn_href,
        class= glue::glue("btn btn-{btn_status}{disabled_class}"),
        btn_text)
    )
  )
}
