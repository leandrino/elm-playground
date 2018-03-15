module About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Skeleton as S
import Card

main : Html msg
main =
    S.skeleton "About"
        [ avatar
        , content
        , Card.card
        ]

(=>) : a -> b -> ( a, b )
(=>) = (,)

avatar : Html msg
avatar =
    div []
        [ img [class "avatar", src "https://avatars1.githubusercontent.com/u/5853539?s=460&v=4"] [] ]

content : Html msg
content =
    div [ class "main-content" ]
        [ p [] [ text """
            Sou Leandro, tenho 32 anos e trabalho com Desenvolvimento Web desde 2014. Atualmente estou
            em um projeto na empresa Raízen atuando como FullStack developer com NodeJS e Angular JS,
            e iniciando um novo projeto interno com a stack do ReactJS.
        """ ] ]
