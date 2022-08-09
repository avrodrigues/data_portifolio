library(glue)
figure_quarto <- function(
    img_tag, ## like: '![](image.png)'
    code_src = NULL ## an url
){
  if(!is.null(code_src)){
    icon_tag <- glue::glue(
      "<a href={code_src}><i class='bi bi-code-slash'></i></a>"
    )

    figure_tag <- glue(
      "
      :::{{.figure}}

      {icon_tag}
      {img_tag}

      :::

      ")
  } else {
    figure_tag <- glue(
      "
      :::{{.figure}}

      {img_tag}

      :::

      ")
  }

  cat(figure_tag)

}
