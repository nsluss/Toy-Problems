{--

TODAY!

We're going to MAKE

A WEB SERVICE!

TODAY!

Create a web service that responds off of root with "Hello, World!"
and off of /static with a file on the web server so requested

So, if you have ~/pngs/Connecticut.png

and the person (you) come in with

localhost:8080/static/Connecticut.png

then it shows a png of Connecticut. For example. It could be Scotland.png,
so you get the point, yes?

NOW!

This LOOKS daunting, but there are several Haskell frameworks that do this
very nicely for you (most of it, yes).

So, one of them is Snap, there are a few others.

So, I would recommend using one of those frameworks, because I did do it
with TCP and UDP, and it's not all that fun to do; the RESTful web frameworks
automate much of the housekeeping.

--}

data WebInteraction a = DependingOnTheFrameworkYouUseOrBuild

webservice :: WebInteraction ()
webservice = undefined