module Elements.Pietement exposing (..)


type Pietement
    = BoutDeTable
    | Central


toString : Pietement -> String
toString pietement =
    case pietement of
        BoutDeTable ->
            "En bout de table"

        Central ->
            "Central"
