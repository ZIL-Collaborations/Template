"Template - Main"

<CONSTANT GAME-BANNER
"Template|
A ZILF game template by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"The Mechanics"

<ROUTINE GO ()
    <SETG HERE DARKNESS>
    <INIT> <MOVE PLAYER ,HERE>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
    <MAIN-LOOP>
>

<ROOM DARKNESS (IN ROOMS) (DESC "Darkness")
    (LDESC "It is pitch black. You can't see a thing.")
>

<INSERT-FILE "parser">


"The Game"

<ROUTINE INIT ()
    <RETURN>
>
