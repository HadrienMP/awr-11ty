module Elements.EssenceView exposing (..)

import Common.ImageOptionField as ImageOptionField
import Common.Prix as Prix
import Elements.Essence as Essence exposing (Essence(..), all)
import GrilleTarifaire exposing (essence)
import Html


fields : List (ImageOptionField.Model Essence)
fields =
    all
        |> List.map essenceField


essenceField : Essence -> ImageOptionField.Model Essence
essenceField essence =
    let
        ( fieldId, image ) =
            case essence of
                Chene ->
                    ( "chene"
                    , "/images/simulation/essences-img/chene.jpg"
                    )

                Chataignier ->
                    ( "chataignier", "/images/simulation/essences-img/chataigner.jpg" )

                Frene ->
                    ( "frene", "/images/simulation/essences-img/frene.jpg" )

                Noyer ->
                    ( "noyer", "/images/simulation/essences-img/noyer.jpg" )

                Prestige ->
                    ( "prestige", "/images/simulation/essences-img/olivier.jpg" )

                Exotique ->
                    ( "exotique", "/images/simulation/essences-img/bubinga.jpg" )
    in
    { fieldId = fieldId
    , labelString = Essence.toString essence
    , prix = GrilleTarifaire.essence essence |> Prix.print |> append " / m2" |> Just
    , image = image
    , value = essence
    }


append : String -> String -> String
append suffix prefix =
    prefix ++ suffix
