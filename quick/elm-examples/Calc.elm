module Calc exposing (..)

import Html


add a b =
    a + b


remove a b =
    a - b


multiply c d =
    c * d


divide e f =
    e / f


main =
    Html.text <|
        toString <|
            add 5 <|
                multiply 10 <|
                    divide 30 10
