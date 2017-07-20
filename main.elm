module Main exposing (..)

import Html exposing (..)
import Page.Page exposing (frame)
import Page.Home
import Page.About
import Page.NotFound
import Navigation exposing (program)
import Route exposing (Route)


-- MODEL


type alias Model =
    { page : Route
    }


init : Navigation.Location -> ( Model, Cmd Msg )
init loc =
    ( Model Route.Home, Cmd.none )



-- UPDATE


type Msg
    = SetRoute (Maybe Route)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetRoute Nothing ->
            ( { model | page = Route.NotFound }, Cmd.none )

        SetRoute (Just x) ->
            ( { model | page = x }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    let
        frame =
            Page.Page.frame model.page
    in
        case model.page of
            Route.Home ->
                frame Page.Home.view

            Route.About ->
                frame Page.About.view

            Route.NotFound ->
                frame Page.NotFound.view



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program
        (Route.fromLocation >> SetRoute)
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
