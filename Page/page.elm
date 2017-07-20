module Page.Page exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Route exposing (Route)


viewHeader : Route -> Html msg
viewHeader route =
    let
        activeClass : Route -> List (Html.Attribute msg)
        activeClass r =
            if route == r then
                [ class "active" ]
            else
                []
    in
        nav [ class "navbar navbar-default navbar-static-top" ]
            [ div
                [ class "container" ]
                [ div [ id "navbar", class "navbar-collapse collapse" ]
                    [ ul [ class "nav navbar-nav" ]
                        [ li
                            (activeClass Route.Home)
                            [ a [ href "#" ] [ text "Home" ] ]
                        , li
                            (activeClass Route.About)
                            [ a [ href "#about" ] [ text "About" ]
                            ]
                        ]
                    , ul
                        [ class "nav navbar-nav navbar-right" ]
                        []
                    ]
                ]
            ]


viewFooter : Html msg
viewFooter =
    footer [ class "bd-footer text-muted" ] []


frame : Route -> Html msg -> Html msg
frame route content =
    div []
        [ viewHeader route
        , content
        , viewFooter
        ]
