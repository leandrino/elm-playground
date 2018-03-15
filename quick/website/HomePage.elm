module BeginningElm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Wellcome to Elm Project!" ]
        , p [] [ text "This is a simple test to Elm Lang" ]
        ]


main =
    view "Elm Project"
