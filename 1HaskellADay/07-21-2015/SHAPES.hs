{--

The next problem in Haskell by Example is ... METHODS!

YAY!

Um ... excuse me whilst I puke.

OKAY! WE'RE DONE WITH METHODS! YAY!

Now, the next-NEXT example is INTERFACES! YAY!

http://lotz84.github.io/haskellbyexample/ex/interfaces

Okay, that's something I can work with, not those pesky methods!

(You: what's a method? Me: a function. You: but ... Me: NEVER MIND, OKAY?)

So, in today's Interface example you have: --}

class Geometry g where
   area :: g -> Double
   perim :: g -> Double

{--

And we had a declaration of a Square-type.

OR. IS. IT!

The thing is, the square data-type is ACTUALLY a rectangle.

RENAME the Square data type so that it IS ACTUALLY a rectangle.

THEN! THEN! DO declare the Square data type, so that EVERY square-value IS
ACTUALLY a SQUARE and CAN ONLY BE A SQUARE, NO EXCEPTION!

Oooh! Hard! Geometry, and all that! --}

data Rectangle = Rectangle Double Double deriving Show

data Square = Square Double deriving Show

{--

Now, area and perim, those functions can work for squares, just as they
work for rectagles, because, after all, squares are a specialization of
rectangles (their generalization).

Now, there's more than one way to go about this, but let me give you the
definitions for the area and perimeter of rectangles as separate (from the
Geometry typeclass) functions: --}

areaRect, perimRect :: Double -> Double -> Double
areaRect = (*)
perimRect w = (2*) . (w+)

{--

Now, armed with these definitions: make Rectangle a Geometry instance.
Then, using the same definitions, make Square a Geometry instance.
--}

instance Geometry Rectangle where
  area (Rectangle w h) = areaRect w h
  perim (Rectangle w h) = perimRect w h 

instance Geometry Square where
  area (Square l) = areaRect l l
  perim (Square l) = perimRect l l

{-- What are the areas and perimetrae (?) of the following geoms?

Square 3 3 (for example, you (hint-hint) MAY declare Squares differently)
Rectangle 4 3
Square 2 2
Rectangle 2 pi

Does a cicle fit in the above rectangle? Never mind: I got all Greek there. :/
--}

-- BONUS -------------- Geodetic? Geocentric? Geometric? Geo-geo? ---------

{-- So you see the declaration for Circle.

Declare Ellipse and define it as a Geometry-type --}

data Ellipse = SquashedCircle

-- This may help: https://en.wikipedia.org/wiki/Ellipse

-- What is the area and perimeter of Ellipse 3 4
-- What is an ellipse with major and minor axes equal (to each other)?

-- BONUS-BONUS ------------------ DRAW, PARDNER! --------------------------

-- Use some graphics-package to draw the above shapes. Don't be shy! Show!
