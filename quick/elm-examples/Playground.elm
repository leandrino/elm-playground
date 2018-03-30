module Playground exposing (..)

import Html

escapeHearth : Float -> Float -> String
escapeHearth velocity speed =
    if velocity > 11.186 then
        "Godspeed"
    else if speed == 7.67 then
        "Stay in orbit"
    else
        "Come back"


speed : Float -> Float -> Float
speed distance time =
    distance / time

time : number -> number -> number
time startTime endTime =
    endTime - startTime



-- main =
--     Html.text (escapeHearth 11 (speed 7.67 (time 2 3)))

main : Html.Html msg
main =
    time 2 3
        |> speed 7.67
        |> escapeHearth 11
        |> Html.text
