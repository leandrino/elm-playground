module Skeleton exposing (skeleton)

import Html exposing (..)
import Html.Attributes exposing (..)

(=>) : a -> b -> ( a, b )
(=>) = (,)

skeleton : String -> List (Html msg) -> Html msg
skeleton tabName content =
  div []
    (header tabName :: content ++ [footer])

header : String -> Html msg
header name =
  div [ id "tabs", class "header" ]
    [ a [ href "/" ]
        [ img [ src "/logo.svg", style [ "width" => "24px", "height" => "24px" ] ] []
        ]
    , ul [] (List.map (tab name) [ "about", "experiences", "contact", "blog" ])
    ]

tab : String -> String -> Html msg
tab currentName name =
  li []
    [ a [ classList [ "tab" => True, "current" => (currentName == name) ]
        , href ("/" ++ name)
        ]
        [ text name ]
    ]

footer : Html msg
footer =
  div [ class "footer" ]
    [ text "The code for this site is written in Elm. "
    , a [ class "grey-link", href "https://github.com/leandrino/elm-playground" ] [ text "Check it out" ]
    , text "! — © 2018 Leandro Leandrino"
    ]
