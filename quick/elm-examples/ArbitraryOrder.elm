module ArbitraryOrder exposing (..)

import Html

evilmetter : String -> String -> Order
evilmetter character1 character2 =
    case (character1, character2) of
        ( "Joffrey", "Ramsay" ) ->
            LT

        ( "Joffrey", "Night King") ->
            LT

        ( "Ramsay", "Joffrey" ) ->
            GT

        ( "Ramsay", "Night King" ) ->
            LT

        ( "Night King", "Joffrey" ) ->
            GT

        ( "Night King", "Ramsay" ) ->
            GT

        _ ->
            GT

main : Html.Html msg
main =
    [ "Night King", "Joffrey", "Ramsay" ]
        |> List.sortWith evilmetter
        |> toString
        |> Html.text
