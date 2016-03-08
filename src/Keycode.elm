module Keycode where

import Graphics.Element exposing (show)
import Keyboard

{-| main: where all the fun happens

right now it just shows the time since the program started updated at 10 fps
-}
main =
  Keyboard.presses |> Signal.map show
