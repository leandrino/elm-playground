module FoldingList exposing (..)

import Html

whateverList =
    [ "tomato", "banana", "lemon", "orange", "apple" ]

sumList x a =
    x + a

countLetters =
    List.map String.length whateverList
        |> List.foldl sumList 0 -- original example of function (\x a -> x + a)
        |> toString

main =
    countLetters
        |> Html.text