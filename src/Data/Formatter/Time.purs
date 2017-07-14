module Data.Formatter.Time where

import Prelude

import Data.DateTime (DateTime(..), Time, time)
import Data.Either (Either)
import Data.Formatter.DateTime as FD

format ∷ FD.Formatter → Time → String
format fmt x = FD.format fmt $ DateTime bottom x

formatTime ∷ String → Time → Either String String
formatTime fmt x = FD.formatDateTime fmt $ DateTime bottom x

unformat ∷ FD.Formatter → String → Either String Time
unformat fmt x = FD.unformat fmt x <#> time

unformatTime ∷ String → String → Either String Time
unformatTime fmt x = FD.unformatDateTime fmt x <#> time
