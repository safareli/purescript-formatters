module Data.Formatter.Date where

import Prelude

import Data.DateTime (DateTime(..), Date, date)
import Data.Either (Either)
import Data.Formatter.DateTime as FD

format ∷ FD.Formatter → Date → String
format fmt x = FD.format fmt $ DateTime x bottom

formatDate ∷ String → Date → Either String String
formatDate fmt x = FD.formatDateTime fmt $ DateTime x bottom

unformat ∷ FD.Formatter → String → Either String Date
unformat fmt x = FD.unformat fmt x <#> date

unformatDate ∷ String → String → Either String Date
unformatDate fmt x = FD.unformatDateTime fmt x <#> date
