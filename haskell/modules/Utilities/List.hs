module Utilities.List (none)
where

none :: (a -> Bool) -> [a] -> Bool
none f l = not (any f l)
