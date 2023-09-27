module Elements.PietementView exposing (..)

import Common.ImageOptionField as ImageOptionField
import Common.Images as Images
import Common.Prix as Prix
import Elements.Pietement exposing (Pietement(..))
import Elements.Type
import GrilleTarifaire
import Html


fields : Elements.Type.TableType -> List (ImageOptionField.Model Pietement)
fields type_ =
    List.map (field type_) [ BoutDeTable, Central ]


field : Elements.Type.TableType -> Pietement -> ImageOptionField.Model Pietement
field type_ pietement =
    case pietement of
        BoutDeTable ->
            { fieldId = "bout-de-table"
            , labelString = "En bout de table"
            , prix = GrilleTarifaire.pietement type_ pietement |> Prix.print |> Just
            , image = Images.boutDeTable
            , value = pietement
            }

        Central ->
            { fieldId = "central"
            , labelString = "Central"
            , prix = GrilleTarifaire.pietement type_ pietement |> Prix.print |> Just
            , image = Images.central
            , value = pietement
            }
