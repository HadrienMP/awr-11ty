module GrilleTarifaire exposing (..)
import Elements.Essence exposing (Essence(..))
import Common.Prix exposing (Prix(..))
import Elements.Type exposing (TableType(..))
import Elements.Pietement exposing (Pietement(..))
import Elements.Type exposing (TableType(..))


essence : Essence -> Prix
essence value =
    case value of
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



pietement : TableType -> Pietement -> Prix
pietement typeDeTable typePietement =
    case typeDeTable of
        TableBasse ->
            case typePietement of
                BoutDeTable ->
                    Euros 180

                Central ->
                    Euros 250

        TableAManger ->
            case typePietement of
                BoutDeTable ->
                    Euros 250

                Central ->
                    Euros 500