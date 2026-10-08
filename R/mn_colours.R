#' @title List of MN Colour Palettes
#'
#' @description
#' Sets of colour palettes created similar to USAIDS Office of HIV/AIDs style guide (https://issuu.com/achafetz/docs/oha_styleguide#google_vignette).
#' Colours are stored as a named list. Use palette name or position to call in colours.
#'
#' Colour sets are stored as the name of the first colour.
#' Calling `mn_palettes$penn_red` will return the five colours where penn_red is the base.
#' Calling `mn_palettes$penn_reds` will return an interpolated ramp of 11 colours for penn_red.
#'
#' @importFrom scales show_col
#'
#' @export
#'
#' @seealso [mn_rampr] for details on creating interpolated palettes of varying lengths.
#'
#' @examples
#' \dontrun{
#' # List names of palettes available
#' names(mn_palettes)
#'
#' scales::show_col(mn_palettes$hex_main)
#' scales::show_col(mn_palettes$penn_red)
#'
#' # Show palettes interpolated
#' mn_rampr("div_hblue_red", n = 10) %>% scales::show_col(labels = T)
#' mn_rampr("div_hblue_red", n = 100) %>% scales::show_col(labels = FALSE)
#'}


mn_palettes <- list(
  ## Base colours
  hex_main = c("#1464a0", "#b02b23", "#7a5bbf", "#e07030", "#3fb1bd", "#f0c535", "#2d8a5e", "#7a7a7a"),

  ## Recommended categorical palettes
  hex_blue = c("#1464a0", "#b02b23", "#3fb1bd", "#2d8a5e", "#e07030", "#f0c535", "#7a5bbf"),
  penn_red = c("#b02b23", "#3fb1bd", "#7a5bbf", "#e07030", "#2d8a5e"),
  byzantium = c("#7a5bbf", "#2d8a5e", "#1464a0", "#f0c535", "#e07030", "#3fb1bd"),
  ochre = c("#e07030", "#7a5bbf", "#f0c535", "#b02b23", "#3fb1bd"),
  teal = c("#3fb1bd", "#b02b23", "#7a5bbf", "#f0c535", "#2d8a5e"),
  hunyadi_yellow = c("#f0c535", "#1464a0", "#2d8a5e", "#e07030", "#7a5bbf"),
  hunters_green = c("#2d8a5e", "#7a5bbf", "#f0c535", "#e07030", "#3fb1bd"),
  hex_blue_red = c("#1464a0", "#b02b23"),

  ## Colourblind-safe categorical palette (8 colours)
  ## Built from MN base colours, benchmarked against the Okabe-Ito palette.
  ## Checked with colorspace::deutan(), protan() and tritan() simulations: the closest pair of colours
  ## is >= 14 CIEDE2000 apart under normal vision and all three CVD types (Okabe-Ito scores ~11).
  ## Ordered so that the first n colours are as distinct as possible for any n.
  ## hex blue, penn red, ochre, teal, trolley grey, jet and light ochre are MN colours.
  ## #F0E442 (Okabe-Ito yellow) replaces hunyadi yellow, which clashes with ochre/light ochre under CVD.
  ## byzantium and hunters green are excluded as they collide with hex blue and ochre under CVD.
  cb_safe = c("#1464a0", "#b02b23", "#e07030", "#3fb1bd", "#7a7a7a", "#2F2F2F", "#f3b18c", "#F0E442"),

  hex_pairs = c(
    "#1464a0", "#5b8fc7",
    #"#4588A3", "#94C8DE",
    "#3fb1bd", "#94d7e0",
    "#b02b23", "#e58c85",
    "#f0c535", "#ffe9a8",
    "#2d8a5e", "#78a893",
    "#7a5bbf", "#b7a9e0",
    "#e07030", "#f3b18c",
    "#a53f2b", "#f2b1a4",
    "#7a7a7a", "#cfcfcf"
  ),

  ## Sequential colour palettes - built from base colours
  ## Use https://www.learnui.design/tools/data-color-picker.html#single
  ## To get lighter colours use # colours = 7 and final colour #f9f9f9 (ignore #f9f9f9)
  ## To get darker colours use # colours = 7 and final colour #0b0b0b (ignore #0b0b0b)

  hex_blue_seq = c(
    "#d6dce5", "#b3c0d2", "#90a4bf", "#6d89ac", "#477099", "#145787", "#1a4a71", "#1b3d5b", "#1b3046", "#182432", "#14191f"
  ),

  teal_seq = c(
    "#deedef", "#c2e1e5", "#a6d5db", "#70b6c0", "#68bdc7", "#3fb1bd", "#3a929c", "#33757c", "#2c595e", "#233e41", "#192526"
  ),

  penn_red_seq = c(
    "#f5dad5", "#efbbb2", "#e69c90", "#db7e70", "#ce5e51", "#bf3b33", "#9f352d", "#7f2e26", "#612720", "#441f1a", "#291714"
  ),

  hunyadi_yellow_seq = c(
    "#fdf3df", "#ffedc5", "#ffe7ab", "#ffe191", "#ffdc76", "#e8c661", "#d1b04c", "#a68c40", "#7c6933", "#544827", "#30291a"
  ),

  hunters_green_seq = c(
    "#d6dfdb", "#b4c6be", "#92ada1", "#719586", "#507d6b", "#2f6652", "#2a5646", "#25463a", "#20372e", "#1a2923", "#141b18"
  ),

  byzantium_seq = c(
    "#e7e2f0", "#d5cbe7", "#c3b5de", "#b19fd5", "#9f89cb", "#8c74c2", "#7561a0", "#5e4f7f", "#493e60", "#342d43", "#201d27"
  ),

  ochre_seq = c(
    "#f9e4da", "#f7cebc", "#f3b99e", "#eda481", "#e68f65", "#de7a49", "#b7663f", "#925335", "#6e412b", "#4c2f21", "#2c1e17"
  ),

  chestnut_seq = c(
    "#f0d9d3", "#e4baaf", "#d79b8c", "#c87d6a", "#b75e4a", "#a53f2b", "#8a3726", "#6f2f21", "#55271d", "#3d1f18", "#251712"
  ),

  trolley_grey_seq = c(
   "#eaeaea", "#dbdbdb", "#cccccc", "#bdbdbd", "#aeaeae", "#a0a0a0", "#858585", "#6a6a6a", "#515151", "#393939",  "#232323"
  ),

  ## Diverging palettes
  div_hblue_red = c(
    "#145787", "#4e739c", "#7891b0", "#a0b0c6", "#c8d0db", "#f1f1f1", "#edcdc8", "#e7aaa0", "#dc877a", "#cf6355", "#bf3b33"
  ),

  div_earth = c(
    "#a16928", "#af8343", "#bd9d60", "#ccb77f", "#dcd1a0", "#edeac2", "#c3d9b1", "#97c6a9", "#6db3a5", "#469ea4", "#2887a1"
  ),

  div_green_pur = c(
    "#2f6652", "#56806f", "#7b9b8e", "#a1b7ae", "#c8d4cf", "#f1f1f1", "#ddd7e8", "#c9bdde", "#b5a4d5", "#a18ccc", "#8c74c2"
  )
)

# Categorical palettes in mn_palettes: mn_rampr() recycles these rather than interpolating.
# Add any new categorical palette here.
mn_categorical_palettes <- c(
  "hex_main", "hex_blue", "penn_red", "byzantium", "ochre", "teal",
  "hunyadi_yellow", "hunters_green", "hex_blue_red", "cb_safe"
)

  # Individual named colours
  #' @export
  #' @description Hex blue with hex code "#1464a0"
  #' @title hex blue
  hex_blue = "#1464a0"

  #' @export
  #' @description Hex teal with hex code "#3fb1bd"
  #' @title teal
  teal = "#3fb1bd"

  #' @export
  #' @description Penn red with hex code "#b02b23"
  #' @title penn red
  penn_red = "#b02b23"

  #' @export
  #' @description Hunyadi yellow with hex code "#f0c535"
  #' @title hunyadi yellow
  hunyadi_yellow = "#f0c535"

  #' @export
  #' @description Hunters green with hex code "#2d8a5e"
  #' @title hunters green
  hunters_green = "#2d8a5e"

  #' @export
  #' @description Byzantium with hex code "#7a5bbf"
  #' @title byzantium
  byzantium = "#7a5bbf"

  #' @export
  #' @description Ochre with hex code "#e07030"
  #' @title ochre
  ochre = "#e07030"

  #' @export
  #' @description Air Force blue with hex code "#1E95A2"
  #' @title air force blue
  air_force_blue = "#1E95A2"

  #' @export
  #' @description Chestnut with hex code "#a53f2b"
  #' @title chestnut
  chestnut = "#a53f2b"

  #' @export
  #' @description Light hex blue with hex code "#5b8fc7". Alternative is "#64B1E8"
  #' @title light hex blue
  light_hex_blue = "#5b8fc7"

  #' @export
  #' @description Light penn red with hex code "#e58c85". Alternative is "#F2665C"
  #' @title light Penn red
  light_penn_red = "#e58c85"

  #' @export
  #' @description Light teal with hex code "#94d7e0"
  #' @title light teal
  light_teal = "#94d7e0"

  #' @export
  #' @description Light hunyadi yellow with hex code "#ffe9a8"
  #' @title light hunyadi yellow
  light_hunyadi_yellow = "#ffe9a8"

  #' @export
  #' @description Light Hunters green with hex code "#78a893"
  #' @title light hunters green
  light_hunters_green = "#78a893"

  #' @export
  #' @description Light byzantium with hex code "#b7a9e0"
  #' @title light byzantium
  light_byzantium = "#b7a9e0"

  #' @export
  #' @description Light ochre with hex code "#f3b18c"
  #' @title light ochre
  light_ochre = "#f3b18c"

  #' @export
  #' @description Light chestnut with hex code "#f2b1a4"
  #' @title light chestnut
  light_chestnut = "#f2b1a4"

  #' @export
  #' @description Light Air Force blue with hex code "#A8D5DE". Alternative is "#88D7F8"
  #' @title light air force blue
  light_air_force_blue = "#A8D5DE"

  #' @export
  #' @description Whisper with hex code "#EBEBEB"
  #' @title whisper
  whisper = "#EBEBEB"

  #' @export
  #' @description Timberwolf with hex code "#D4D4D4". Useful as light grid line colour
  #' @title timberwolf
  timberwolf = "#D4D4D4"

  #' @export
  #' @description Suva grey with hex code "#8F8F8F". Useful as Caption colour.
  #' @title suva grey
  suva_grey = "#8F8F8F"

  #' @export
  #' @description Trolley grey with hex code "#808080"
  #' @title trolley grey
  trolley_grey = "#808080"

  #' @export
  #' @description Matterhorn with hex code "#4F4F4F" Useful as Subtitle/Body & Dark Grid lines colour.
  #' @title matterhorn
  matterhorn = "#4F4F4F"

  #' @export
  #' @description Jet with hex code "#2F2F2F". Useful as Title colour.
  #' @title jet
  jet = "#2F2F2F"

  #' @export
  #' @description Snow white with hex code "#fafafc". Used as the plot and panel background colour in mn_style themes.
  #' @title snow white
  snow_white = "#fafafc"

