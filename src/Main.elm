module Main exposing(..)
{-| This module contains the entry point into
our application and it has a few functions that we can use to initialize
and set up our application
-}

import Html exposing(Html, div, text)


-- Build a type for our model
type alias Model =
  {url : String
  }

{-| We use this function to initialize our application when starting up
We can always start up by checking the value of the url
-}
init : (Model, Cmd Msg)
init = ({ url = "init" }, Cmd.none)


-- Build some messages to update the state
type Msg
    = CheckUrl

{-| Use this function to update the state of out form
We send updates to this function containing a message and the payload
-}
update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    CheckUrl ->
      (model, Cmd.none)


{-| This function contains the view we display for the form it render the UI
from whatever the state of the model is
-}
view : Model -> Html msg
view model =
  div []
  [ div [] [ text model.url]]

-- our program
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = \_ -> Sub.none
    }
