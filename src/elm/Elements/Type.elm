module Elements.Type exposing (..)

import Common.ImageOptionField as ImageOptionField
import Common.Mesures exposing (Ligne(..), TaillesRanges)


type TableType
    = TableBasse
    | TableAManger


toString : TableType -> String
toString tableType =
    tableTypeField tableType |> .labelString


fields : List (ImageOptionField.Model TableType)
fields =
    [ TableAManger, TableBasse ] |> List.map tableTypeField


tableTypeField : TableType -> ImageOptionField.Model TableType
tableTypeField tableType =
    let
        ( fieldId, labelString, image ) =
            case tableType of
                TableBasse ->
                    ( "basse", "Table basse", "/images/simulation/table-basse.jpg" )

                TableAManger ->
                    ( "a-manger", "Table à manger", "/images/simulation/table-a-manger.jpg" )
    in
    ImageOptionField.Model fieldId labelString image tableType


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
