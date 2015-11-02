import Data.Map (Map)

{--

Okay, check this out:

http://lemonodor.com/code/rid.py

This links to a Python program that does Regressive Imagery over a written work.

We'll look at Haskell-ing it later, for now we'll just use it. It is runnable on
the shell (given that your OS comes with Python; most do) just by ... well, running
it. E.g.:

geophf:writing geophf$ ./rid.py < my-word.txt 
SECONDARY:SOCIAL BEHAVIOR                                        6
  share thank thank represented thank congratulations
PRIMARY:ICARIAN IMAGERY:HEIGHT                                   3
  top top top
SECONDARY:INSTRUMENTAL BEHAVIOR                                  3
  find finished finished
SECONDARY:TEMPORAL REFERENCES                                    3
  minutes today again
PRIMARY:REGRESSIVE COGNITION:CONCRETENESS                        2
  at off
EMOTIONS:POSITIVE AFFECT                                         1
  cheers
SECONDARY:ORDER                                                  1
  list
SECONDARY:ABSTRACTION                                            1
  know
EMOTIONS:GLORY                                                   1
  great
PRIMARY:DEFENSIVE SYMBOLIZATION:CHAOS                            1
  chance

PRIMARY             : 27.272727 %
EMOTIONS            : 9.090909 %
SECONDARY           : 63.636364 %

146 words total

Today we're going to look at our EQ, not Eq, as that's something that involves
a lot of guess-work, but EQ, as in 'emotional quotient,' as that is entirely
measurable.

So, there are words in text that give a feel as to not so much what the text
is about, but moreso how the text is being expressed.

Is the writer angry? happy? sad? conceited? Is the writer all 'I' 'me' 'mine.'
Or 'you'-this and 'you'-that? Or, as was refreshing to see, 'we' are building
a company that, and 'we' are looking forward to making an impact that ... 

Is the writer looking to the past or to the future? Or is the writer centered 
in the present tense.

As Joy Davidman said: "Present. And tense."

https://en.wikipedia.org/wiki/Joy_Davidman

So, yeah. That.

So, how do we do this? Actually, all of the above have been reduced to 
mathematical models, and furthermore, the words of any text can also be
reduced to sets of numbers in a mathematical model.

Where the two streams converge, you fish.

Go fishing.

Select any body of work, separate it into a set of word and their counts then
provide analysis on that corpus. Share your results. Did you learn something
new by performing this analysis, or was the analysis in line with how you
already thought about this work?
--}

rid :: FilePath -> IO ([(String, Int)])
rid = undefined

-- rid loads the file then sends it to rid.py for analysis, printing the result
-- out as the above opening comment, then it provides a word count by word.

-- Return the word most-mentioned first (with its count), down to the least-mentioned
-- word.