module CaseExpression exposing (..)

import Html

weekday : Int -> String
weekday dayInNumber =
    case dayInNumber of
        0 ->
            "Sunday"

        1 ->
            "Monday"

        2 ->
            "Tuesday"

        3 ->
            "Wednesday"

        4 ->
            "Thursday"

        5 ->
            "Friday"

        6 ->
            "Saturday"

        _ ->
            "Unknown day"

hashtag : Int -> String
hashtag dayInNumber =
    case weekday dayInNumber of
        "Sunday" ->
            "#SinDay"
        "Monday" ->
            "#MondayBlues"
        "Tuesday" ->
            "#TakeMeBackTuesday"
        "Wednesday" ->
            "HumpDay"
        "Thursday" ->
            "#ThrowbackThursday"
        "Friday" ->
            "#FlashbackFriday"
        "Saturday" ->
            "#Caturday"
        _ ->
            "#Whatever"

main : Html.Html msg
main =
    hashtag 5
        |> Html.text
