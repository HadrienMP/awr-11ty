module Elements.Table exposing (..)

import Common.Mesures exposing (Ligne(..))
import Common.Prix as Prix exposing (Prix)
import Common.Surface as Surface exposing (Surface)
import Elements.Essence as Essence exposing (Essence(..))
import Elements.Pietement as Pietement exposing (Pietement)
import Elements.Type as Type exposing (TableType)
import GrilleTarifaire


type alias Table =
    { type_ : TableType
    , essence : Essence
    , surface : Surface
    , pietement : Pietement
    }


recapitulatif : Table -> List String
recapitulatif table =
    [ "Format : " ++ Type.toString table.type_
    , "Essence : " ++ Essence.toString table.essence
    , "Dimensions : " ++ Surface.toString table.surface
    , "Piétement : " ++ Pietement.toString table.pietement
    ]


prix : Table -> Prix
prix table =
    GrilleTarifaire.essence table.essence
        |> Prix.times (Surface.m2 table.surface)
        |> Prix.plus (GrilleTarifaire.pietement table.type_ table.pietement)
        |> Prix.round


tableAManger =
    { type_ = Type.TableAManger
    , essence = Chene
    , surface =
        { longueur = Centimetre 140
        , largeur = Centimetre 70
        }
    , pietement = Pietement.BoutDeTable
    }
