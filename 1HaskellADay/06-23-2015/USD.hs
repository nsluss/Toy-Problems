module Data.Monetary.USD where

-- Spraken dollars, mang! ... or, a type-classical way of uniformly treating
-- monetary values.

import Control.Presentation          -- http://lpaste.net/588030780018524160

class Price a where value :: a -> Rational

data USD = USD Rational deriving Eq

instance Ord USD where USD x <= USD y = x <= y
instance Show USD where show (USD x) = '$':laxmi x
instance Raw USD where rep (USD x) = laxmi x

instance Price USD where
   value (USD x) = x     -- so Price-types are copointed ...

instance Num USD where
   d1 - d2 = USD $ value d1 - value d2
   negate dollar = USD $ 0.0 - value dollar
   d1 + d2 = USD $ value d1 + value d2
   d1 * d2 = USD $ value d1 * value d2
   abs dollar = USD $ abs (value dollar)
   signum dollar = USD $ signum (value dollar)
   fromInteger x = USD (fromInteger x)

instance Fractional USD where
   d1 / d2 = USD $ value d1 / value d2
   fromRational = USD

mknMoney :: String -> USD
mknMoney str = let dd = read str :: Double in USD (toRational dd)

{-- but look at this!

*Analytics.Trading.Web.ETL Data.Monetary.USD> mknMoney "15.51" ~> $15.50
*Analytics.Trading.Web.ETL Data.Monetary.USD> mknMoney "15.52" ~> $15.51
*Analytics.Trading.Web.ETL Data.Monetary.USD> mknMoney "15.53" ~> $15.52

... why is this? --}
