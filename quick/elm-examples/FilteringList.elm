module FilteringList exposing (..)

import Html

isOdd : Int -> Bool
isOdd number =
    if number % 2 == 0 then False else True

main : Html.Html msg
main =
    [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        |> List.filter isOdd
        |> toString
        |> Html.text
