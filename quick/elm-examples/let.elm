module LetWithElm exposing (..)

import Html


escapeEarth velocity speed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand fuelStatus =
            if fuelStatus == "low" then
                "Land on droneship"
            else
                "Land on launchpad"
    in
        if velocity > escapeVelocityInKmPerSec then
            "Godspeed"
        else if speed == orbitalSpeedInKmPerSec then
            "Stay in orbit"
        else
            whereToLand fuelStatus


main =
    escapeEarth 10 6.7 "low"
        |> Html.text