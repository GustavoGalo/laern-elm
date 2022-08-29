module Main exposing (..)
import Browser
import Html exposing (button, div, text)
import Html.Events exposing (onClick)
import Dict exposing (update)

type Msg = Increment | Decrement

main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


update : Msg -> number -> number
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view : Int -> Html.Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]]
