module Page.Page exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


viewHeader : Html msg
viewHeader =
    nav [ class "navbar navbar-default navbar-static-top" ]
        [ div
            [ class "container" ]
            [ div
                [ class "navbar-header" ]
                [ button
                    [ type_ "undefined", class "navbar-toggle collapsed" ]
                    [ span [ class "sr-only" ] [ text "Toggle navigation" ]
                    , span [ class "icon-bar" ] []
                    , span [ class "icon-bar" ] []
                    , span [ class "icon-bar" ] []
                    ]
                , a
                    [ class "navbar-brand", href "#" ]
                    [ text "Project name" ]
                ]
            , div [ id "navbar", class "navbar-collapse collapse" ]
                [ ul [ class "nav navbar-nav" ]
                    [ li
                        [ class "active" ]
                        [ a [ href "#" ] [ text "Home" ] ]
                    , li []
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


frame : Html msg -> Html msg
frame content =
    div []
        [ viewHeader
        , content
        , viewFooter
        ]
