module Calc exposing (..)

import Html

add : Float -> Float -> Float
add a b =
    a + b

remove : Float -> Float -> Float
remove a b =
    a - b

multiply : Float -> Float -> Float
multiply c d =
    c * d

divide : Float -> Float -> Float
divide e f =
    e / f

main : Html.Html msg
main =
    Html.text <|
        toString <|
            add 5 <|
                multiply 10 <|
                    divide 30 10
