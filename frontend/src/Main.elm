module Main exposing (..)

import Browser exposing (Document, UrlRequest)
import Browser.Navigation exposing (Key)
import Url exposing (Url)



-- MAIN


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }


type Msg
    = OnUrlRequest
    | OnUrlChange


type alias Model =
    {}


initializeModel : Url -> Model
initializeModel url =
    {}


init : () -> Url -> Key -> ( Model, Cmd msg )
init _ url _ =
    ( initializeModel url, Cmd.none )


view : Model -> Document Msg
view model =
    { title = ""
    , body =
        []
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


onUrlRequest : UrlRequest -> Msg
onUrlRequest _ =
    OnUrlRequest


onUrlChange : Url -> Msg
onUrlChange _ =
    OnUrlChange
