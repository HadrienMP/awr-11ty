module Common.ImageOptionField exposing (..)

import Html exposing (Html, div, i, img, input, label, p, text)
import Html.Attributes exposing (alt, checked, class, classList, for, id, name, src, type_, value)
import Html.Events exposing (onCheck)


type alias Model option =
    { fieldId : String
    , labelString : String
    , prix : Maybe String
    , image : String
    , value : option
    }


type alias Props option msg =
    { current : Maybe option
    , onChange : option -> msg
    }


display : Props option msg -> List (Model option) -> List (Html msg)
display props fields =
    fields |> List.map (displayOne props)


displayOne : Props option msg -> Model option -> Html msg
displayOne { current, onChange } { fieldId, value, labelString, image, prix } =
    let
        selected =
            current |> Maybe.map ((==) value) |> Maybe.withDefault False
    in
    label
        [ for fieldId ]
        [ div [ class "image-caption" ]
            [ p [ class "image-title", classList [ ( "selected", selected ) ] ] [ text labelString ]
            , prix
                |> Maybe.map (\it -> p [ class "prix" ] [ Html.text it ])
                |> Maybe.withDefault (Html.text "")
            ]
        , img [ alt labelString, src image ] []
        , i [ class "fas fa-check-circle", classList [ ( "show", selected ) ] ] []
        , input
            [ type_ "radio"
            , id fieldId
            , name "essence"
            , checked selected
            , Html.Attributes.value fieldId
            , onCheck (\_ -> onChange value)
            ]
            []
        ]
