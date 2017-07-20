module Page.About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)


view : Html msg
view =
    div [ class "container" ]
        [ h1 [] [ text "This is about the page" ]
        ]
