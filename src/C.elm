module C exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


type alias Model =
    { count : Int
    }


init : Model
init =
    { count = 0
    }


type Msg
    = NoOp
    | Inc
    | Dec


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Inc ->
            { model | count = model.count + 1 }

        Dec ->
            { model | count = model.count - 1 }


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Dec ] [ text "-" ]
        , text <| String.fromInt model.count
        , button [ onClick Inc ] [ text "+" ]
        ]
