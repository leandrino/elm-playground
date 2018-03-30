module MapList exposing (..)

import Html

guitars =
    [ "Gibson", "Fender", "MusicMan" ]

lengthGuitars =
    List.map String.length guitars
        |> toString

fender =
    List.map (\x -> String.contains "Fender" x) guitars
        |> toString

main =
    [ fender, lengthGuitars ]
        |> toString
        |> Html.text