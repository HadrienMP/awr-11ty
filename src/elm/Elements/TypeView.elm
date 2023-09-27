module Elements.TypeView exposing (..)

import Common.ImageOptionField as ImageOptionField
import Elements.Type exposing (TableType(..))


fields : List (ImageOptionField.Model TableType)
fields =
    [ TableAManger, TableBasse ] |> List.map tableTypeField


tableTypeField : TableType -> ImageOptionField.Model TableType
tableTypeField tableType =
    let
        ( fieldId, image ) =
            case tableType of
                TableBasse ->
                    ( "basse", "/images/simulation/table-basse.jpg" )

                TableAManger ->
                    ( "a-manger", "/images/simulation/table-a-manger.jpg" )
    in
    { fieldId = fieldId
    , labelString = Elements.Type.toString tableType
    , prix = Nothing
    , image = image
    , value = tableType
    }
