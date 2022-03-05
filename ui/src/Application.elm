<<<<<<< HEAD
module Application exposing (main)

import Html exposing (Html, Attribute, button, div, input, text)
=======
>>>>>>> 5a067303e3b7ecd4ba7e49e98bb79efcff62e328
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
  { textbox : String
  }


init : Model
init =
  Model "" 



-- UPDATE


type Msg
  = TextBox String
 

update : Msg -> Model -> Model
update msg model =
  case msg of
    TextBox textbox ->
      { model | textbox = textbox }



-- VIEW
formStyle : List (Attribute msg)
formStyle =
    [ style "border-radius" "5px"
    , style "background-color" "#8350E7"
    , style "padding" "20px"
    , style "width" "400px"
    ]


inputStyle : List (Attribute msg)
inputStyle =
    [ style "display" "block"
    , style "width" "300px"
    , style "padding" "12px 20px"
    , style "margin" "8px 0"
    , style "border" "none"
    , style "border-radius" "4px"
    ]

view : Model -> Html msg
view model =
    div []
        [ h1 [ style "padding-left" "3cm" ] [ text "Text Edit" ]
        , Html.form formStyle
            [ div []
                [ text "This isn't right but its better"
                , input ([ id "textbox", type_ "text" ] ++ inputStyle) []
                ]
              ]
            ]

viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ] []
