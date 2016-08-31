module Keycode exposing (..)

import Char
import Html
import Html.App as App
import Keyboard
import Platform.Cmd as Cmd
import String

{-| main: where all the fun happens

right now it just shows the time since the program started updated at 10 fps
-}
main =
  App.program
  { init = (' ', Cmd.none)
  , subscriptions = (\_ -> Keyboard.downs (Key << Char.fromCode))
  , view = String.fromChar >> Html.text
  , update = update
  }

type Msg
  = Key Char

update : Msg -> Char -> (Char, Cmd Msg)
update m mod =
  let
    key = case m of
      Key c ->
        c
  in
    (key, Cmd.none)

