module Experiences exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Skeleton as S
import Card

main =
    S.skeleton "Experience"
        [ content
        , Card.card
        ]

content : Html msg
content =
    div [ class "main-content" ]
        [ p [] [ text """
            Atuo no desenvolvimento web como Fullstack em linguagens como JavaScript
            NodeJS, PHP, Ruby e Elixir.
        """ ] ]

better : String -> Html msg
better =
    must =
        div [ class "try" ]
            [ p [] [text "try try try"] ]
