module Data.Percentage where

import Control.Presentation          -- http://lpaste.net/588030780018524160

data Percentage = P { percent :: Rational }
   deriving (Eq, Ord) 

instance Show Percentage where
   show (P p) = laxmi p ++ "%"
instance Raw Percentage where 
   rep (P p) = laxmi p