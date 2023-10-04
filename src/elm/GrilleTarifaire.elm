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
            Euros 1093

        Noyer ->
            Euros 1208

        Prestige ->
            Euros 1392

        Exotique ->
            Euros 1208


pietement : TableType -> Pietement -> Prix
pietement typeDeTable typePietement =
    case typeDeTable of
        TableBasse ->
            case typePietement of
                BoutDeTable ->
                    Euros 276

                Central ->
                    Euros 357

        TableAManger ->
            case typePietement of
                BoutDeTable ->
                    Euros 257

                Central ->
                    Euros 644
