import Data.Map (Map)
import qualified Data.Map as Map

import Data.Monetary.USD              -- http://lpaste.net/109653
import Data.Percentage                -- http://lpaste.net/4915955460319739904

{--

Okay, according to the Haskell by Example schedule, we're supposed to study
functions and then write f a b c = a + b + c

very nice. *yawns

I'll have that as a points-free #1liner exercise today. Remind me if I forget.

But we're NOT doing that today, and do you know why? Because I left my safe-
space when I was trigger-worded by this stupid example:

let stupidMap = Map.fromList [("a", "apple"), ("b", "banana")]

Okay. I have a question. Do people feel the need to illustrate fundamental,
powerful structures with the most stupid, contrived examples that they can come
up with? I mean, seriously! "a for apple, b for banana because" ... why?

Are we learning our alphabet? Is the example-writer learning THEIR alphabet?

We can do better.

We shall, in fact.

Here's the scenario.

You own a grocery store. Or, you're the coder for your dad who's a grocery-
store owner in the Old Country and have heard about these computers but isn't
all that sure about them, because all he sees are super-dumb programmers who
know NOTHING about the real world and keep foisting examples of 'a' for 'apple'
and 'b' for 'banana' when he damn-well knows what an apple and a banana are,
and he doesn't need a stupid computer to tell him this.

Well, Papa, you say, computers can help with more than just that, you tell him

And he's like: I hear a lot of talk, and stomps off.

You know: your grumpy old dad, you love him, but he's stuck in the Old Days and
never gets with the times. Can you believe he doesn't even have an iWatch?

The nerve of old people. I swear.

SO.

He does it like he always does it: pencil and butcher paper.

Well, here is how he records the prices:

food,cost
banana,$0.49 Lb
apple,$1.99 Lb
yogurt,$1.69 Ea
sbux refresher,$2.49 Ea
turkey,$8.99 Lb
muenster cheese,$9.99 Lb
tortillas,$2.19 Ea

This file is recorded at http://lpaste.net/120639734354542592

So, some city slicker comes in and buys two refreshers (obviously Town, who
would may that kind of money for something that's basically water?), one banana
weighing 1/3 of a lb (pound, not the money), one yogurt, 1/4 lb turkey,
1/4 lb muester, and a 10-pack of tortillas (the ten-pack is an unit; that is
to say, an 'ea').

How much should dear old Dad charge the customer?

Show him, using a Map, ... NOT butcher paper, ... how this can be automated.
--}

data Measure = Ea | Lb deriving (Eq, Ord, Enum, Show, Read)
type Item = String
type Amount = Rational
data Quantity = Q Amount Measure

priceList :: Map Item (USD, Measure)
priceList = undefined

bill :: [(Item, Quantity)] -> ([(Item, Quantity, USD)], USD)
bill = undefined

{-- BONUS --------------------------------------------------------------------
 
"There ya go, Daddy-o!" you crow triumphantly.

Daddy-o looks at the automated bill and then looks at you with the infinite
sadness and disappointment that only Dads can do (they get Dad-training for 
that skill).

"You forgot the tax," he said, "didn't you."

You forgot the tax. Didn't you.

Well, after you go to your room and crawl into bed and have a good cry-out,
factor in the tax, because same.

--}

type Tax = Percentage

billWithTax :: Tax -> [(Item, Quantity)] -> ([(Item, Quantity, USD, USD)], USD)
billWithTax = undefined

{-- 
The title of this exercise, bananaFish.hs, comes from bananas,... and fish,...
and J.D. Salenger's 9 Stories, one of which is entitled Banana Fish.
--}
