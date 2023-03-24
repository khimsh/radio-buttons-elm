module Main exposing (..)
import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

-- Main
main : Program () Model Msg
main = 
    Browser.sandbox{ init = init, update = update, view = view }


-- Model

type alias Model =
    { percent: String
    }


init : Model
init = 
    {
        percent = ""
    }

-- Update

type Msg 
    = UpdatePercent String

update : Msg  -> Model -> Model
update msg model =
    case msg of
        UpdatePercent percent ->
            { model | percent = percent }


-- View

view : Model -> Html Msg
view model =
    div [][
        fieldset [][
            div [][
                label [] [text "10"],
                input [type_ "radio", value "10", name "percent", onClick (UpdatePercent "10")] []
            ]
            ,div [][
                label [] [text "20"],
                input [type_ "radio", value "20", name "percent", onClick (UpdatePercent "20")] []
            ]
            ,div [][
                label [] [text "30"],
                input [type_ "radio", value "30", name "percent", onClick (UpdatePercent "30")] []
            ]
        ]
    ,   div [] [ text model.percent ]
    ]