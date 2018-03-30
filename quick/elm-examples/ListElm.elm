module ListElm exposing (..)

import Html

descending : Int -> Int -> Order
descending a b =
    case compare a b of
        LT ->
            GT

        GT ->
            LT

        EQ ->
            EQ

main : Html.Html msg
main =
    [ 316, 320, 312, 370, 337, 318, 314 ]
        |> List.sortWith descending
        |> toString
        |> Html.text
