module GrilleTarifaire exposing (..)

import Common.Prix exposing (Prix(..))
import Elements.Essence exposing (Essence(..))
import Elements.Pietement exposing (Pietement(..))
import Elements.Type exposing (TableType(..))


essence : Essence -> Prix
essence value =
    case value of
        Chene ->
            Euros 1150

        Chataignier ->
            Euros 1150

        Frene ->
            Euros 1092.5

        Noyer ->
            Euros 1207.5

        Prestige ->
            Euros 1265

        Exotique ->
            Euros 1207.5


pietement : TableType -> Pietement -> Prix
pietement typeDeTable typePietement =
    case typeDeTable of
        TableBasse ->
            case typePietement of
                BoutDeTable ->
                    Euros 276

                Central ->
                    Euros 356.6

        TableAManger ->
            case typePietement of
                BoutDeTable ->
                    Euros 256.5

                Central ->
                    Euros 644
