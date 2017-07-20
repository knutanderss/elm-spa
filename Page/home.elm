module Page.Home exposing (..)

import Html exposing (Html, h1, text, div)
import Html.Attributes exposing (class)


view : Html msg
view =
    div [ class "container" ]
        [ h1 [] [ text "Welcome home!" ]
        ]
