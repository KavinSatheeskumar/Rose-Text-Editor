<<<<<<< HEAD
module Application exposing (main)

import Html exposing (Html, Attribute, button, div, input, text)
=======
>>>>>>> 5a067303e3b7ecd4ba7e49e98bb79efcff62e328
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

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
  = Textbox String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Textbox textbox ->
      { model | textbox = textbox}


-- VIEW


view : Model -> Html Msg
view model =
  div []
      [ viewInput "text" "Type Here" model.textbox Textbox
    ]


viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
  input [ type_ t, placeholder p, value v, onInput toMsg ] []
