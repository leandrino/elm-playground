module MapList exposing (..)

import Html

guitars : List String
guitars =
    [ "Gibson", "Fender", "MusicMan" ]

lengthGuitars : String
lengthGuitars =
    List.map String.length guitars
        |> toString

fender : String
fender =
    List.map (\x -> String.contains "Fender" x) guitars
        |> toString

main : Html.Html msg
main =
    [ fender, lengthGuitars ]
        |> toString
        |> Html.text
