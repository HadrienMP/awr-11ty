module Elements.Essence exposing (..)

import Common.ImageOptionField as ImageOptionField
import Common.Prix exposing (Prix(..))


type Essence
    = Chene
    | Chataignier
    | Frene
    | Noyer
    | Prestige
    | Exotique

toString: Essence -> String
toString essence =
    essenceField essence |> .labelString

all : List Essence
all =
    [ Chene, Chataignier, Frene, Noyer, Prestige, Exotique ]


prix : Essence -> Prix
prix essence =
    case essence of
        Chene ->
            Euros 900

        Chataignier ->
            Euros 900

        Frene ->
            Euros 850

        Noyer ->
            Euros 950

        Prestige ->
            Euros 1000

        Exotique ->
            Euros 900


fields : List (ImageOptionField.Model Essence)
fields =
    all
    |> List.map essenceField

essenceField : Essence -> ImageOptionField.Model Essence
essenceField essence =
    let
        ( fieldId, labelString, image ) =
            case essence of
                Chene ->
                    ( "chene", "Chêne", "/public/images/simulation/essences-img/chene.jpg" )

                Chataignier ->
                    ( "chataignier", "Châtaignier", "/public/images/simulation/essences-img/chataigner.jpg" )

                Frene ->
                    ( "frene", "Frêne", "/public/images/simulation/essences-img/frene.jpg" )

                Noyer ->
                    ( "noyer", "Noyer", "/public/images/simulation/essences-img/noyer.jpg" )

                Prestige ->
                    ( "prestige", "Prestige", "/public/images/simulation/essences-img/olivier.jpg" )

                Exotique ->
                    ( "exotique", "Exotique", "/public/images/simulation/essences-img/bubinga.jpg" )
    in
    ImageOptionField.Model fieldId labelString image essence
