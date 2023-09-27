module Elements.Essence exposing (..)

import Common.Prix exposing (Prix(..))


type Essence
    = Chene
    | Chataignier
    | Frene
    | Noyer
    | Prestige
    | Exotique


toString : Essence -> String
toString essence =
    case essence of
        Chene ->
            "Chêne"

        Chataignier ->
            "Châtaigner"

        Frene ->
            "Frêne"

        Noyer ->
            "Noyer"

        Prestige ->
            "Prestige"

        Exotique ->
            "Exotique"


all : List Essence
all =
    [ Chene, Chataignier, Frene, Noyer, Prestige, Exotique ]
