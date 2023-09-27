module Elements.Type exposing (..)

import Common.Mesures exposing (Ligne(..), TaillesRanges)


type TableType
    = TableBasse
    | TableAManger


toString : TableType -> String
toString tableType =
    case tableType of
        TableBasse ->
            "Table basse"

        TableAManger ->
            "Table à manger"


tailles : TableType -> TaillesRanges
tailles tableType =
    case tableType of
        TableBasse ->
            { largeurs = { min = Centimetre 50, max = Centimetre 300 }
            , longueurs = { min = Centimetre 50, max = Centimetre 300 }
            }

        TableAManger ->
            { largeurs = { min = Centimetre 65, max = Centimetre 600 }
            , longueurs = { min = Centimetre 65, max = Centimetre 600 }
            }
