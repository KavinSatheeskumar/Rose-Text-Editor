module Application exposing (main)

import Html exposing (Html, Attribute, button, div, input, text)
import Browser
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model = Int 

init : Model
init = 
  0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model = 
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1 

view : Model -> Html Msg
view model = 
  div []
    [ button [ onClick Decrement ] [text "down" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [text "ups" ]
    ]
