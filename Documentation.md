## General Syntax
Every function, even when not formatted like this, it will be processed this way.
```
[*location] [parameters] ;
```
Locations are where parameters are stored, so they're basically just variables. Omen is case sensitive, so be sure to make no typos.
> <b>Parameters</b>

Every parameter is finished with a space. There is <i>no</i> limit to how many parameters are put, just as long as the semicolon is at the end.
```
[ohio] "hello world!" ;
# Yup, that's needed ^
```
Every kind of parameter will be in Omen, without any kind of different syntax from any other programming language.
```
"I'm a string, man. Don't forget my space >>" "<<"
```
You don't even need to seperate functions with lines, you could even just start another right after the semicolon. (Or space it after. Omen won't check.)
```
"hello world!" ; "goodbye!" ;
```
## Variables/Locations
Setting and/or creating a variable are the exact function. The output too is a variable, so if you really want to go through the extra work of just assigning it as a location, so be it.
```
[*output] "hello world!" ;
# ^^^^^^^ But this isn't needed.
```
If you don't put any location to a function, Omen assigns the `*output` location for you. It's the one location that gets its parameters put on screen.
```
# This is 'hello world' now.
"hello world!" ;
```
All custom-made locations cannot contain symbols or numbers, and are announced by name. This is why it is impossible to assign `*output` in the parameters without creating a new location `output`.
## String Interpolation
String interpolation is just a location assigned between two strings when it comes to just locations.
```
"hello, " name ", how's life?"
```
## Equations
To assign a mathematical equation to a location, all you have to type is a spaced out simple operation in parenthesis.
```
( 1 + 1 )
```
Only one operation can be assigned at a time. As most should know, only integers will have the assignment function properly. If any parameters when it comes to `run.py` script end in `ValueError`s, please tell me.
