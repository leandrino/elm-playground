module FoldingList exposing (..)

import Html

whateverList : List String
whateverList =
    [ "tomato", "banana", "lemon", "orange", "apple" ]

sumList : Int -> Int -> Int
sumList x a =
    x + a

countLetters : String
countLetters =
    List.map String.length whateverList
        |> List.foldl sumList 0 -- original example of function (\x a -> x + a)
        |> toString

main : Html.Html msg
main =
    countLetters
        |> Html.text
