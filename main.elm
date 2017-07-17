module Main exposing (..)

import Html exposing (..)
import Page.Page exposing (frame)
import Page.Home exposing (view)
import Page.About exposing (view)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type Page
    = Home
    | About


type alias Model =
    { page : Page }


init : ( Model, Cmd Msg )
init =
    ( Model Home, Cmd.none )



-- UPDATE


type Msg
    = SetPage Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetPage page ->
            ( { model | page = page }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    case model.page of
        Home ->
            frame Page.Home.view

        About ->
            frame Page.About.view
