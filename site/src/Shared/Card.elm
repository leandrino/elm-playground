module Card exposing (card)

import Html exposing (..)
import Html.Attributes exposing (..)

card : Html msg
card =
  div [ class "card-wrap" ]
      [
         h1 [ class "card-title" ]
            [ text "Hello World" ]
      ]
