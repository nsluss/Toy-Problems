{-# LANGUAGE RankNTypes, ExistentialQuantification #-}

module Control.Presentation where    

-- some presentation-layer stuff, existentially

import Control.Arrow

class Univ a where explode :: a -> [String]
   
shower :: forall a. forall b. Show a => [b -> a] -> b -> [a]
shower fns thing = map (app . flip (,) thing) fns

-- alternatively, just show me the raw value within the type
-- GIMME BYTES, BAYBEE!!!11!1!!!

class Raw r where rep :: r -> String

-- Yeah, I'm going there! Shower allows you to create uniform showable
-- types for construction of CSV-rows

data Shower = forall a. Show a => S a | forall b. Raw b => Sr b

instance Show Shower where
   show (S a) = show a
   show (Sr b) = rep b

-- converts a Rational to a stringified-two-digit representation

laxmi :: Rational -> String
laxmi x = let dollars = floor x
              cents   = floor (x * 100) - dollars * 100
          in  show dollars ++ ('.':showAllDa cents)
              where showAllDa x | x > 9     = show x
                                | otherwise = '0':show x