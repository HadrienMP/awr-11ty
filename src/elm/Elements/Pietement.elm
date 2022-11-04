module Elements.Pietement exposing (..)

import Common.ImageOptionField as ImageOptionField
import Common.Images as Images


type Pietement
    = BoutDeTable
    | Central

toString: Pietement -> String
toString pietement =
    field pietement |> .labelString


fields =
    List.map field [ BoutDeTable, Central ]


field : Pietement -> ImageOptionField.Model Pietement
field pietement =
    case pietement of
        BoutDeTable ->
            { fieldId = "bout-de-table"
            , labelString = "En bout de table"
            , image = Images.boutDeTable
            , value = pietement
            }

        Central ->
            { fieldId = "central"
            , labelString = "Central"
            , image = Images.central
            , value = pietement
            }
