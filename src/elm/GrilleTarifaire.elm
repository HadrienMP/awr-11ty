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
            Euros 1000

        Chataignier ->
            Euros 1000

        Frene ->
            Euros 950

        Noyer ->
            Euros 1050

        Prestige ->
            Euros 1100
 
        Exotique ->
            Euros 1050



pietement : TableType -> Pietement -> Prix
pietement typeDeTable typePietement =
    case typeDeTable of
        TableBasse ->
            case typePietement of
                BoutDeTable ->
                    Euros 240

                Central ->
                    Euros 310

        TableAManger ->
            case typePietement of
                BoutDeTable ->
                    Euros 310

                Central ->
                    Euros 560
