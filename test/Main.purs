module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)

import CSS.Render.Concur.ReactSpec (reactSpec)

main :: Effect Unit
main = launchAff_ $ runSpec [consoleReporter] do
  reactSpec
