"Template - Main"

<CONSTANT GAME-BANNER
"Template|
A ZILF game template by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"The Mechanics"

<ROUTINE GO ()
    <SET-THE-SCENE>
    <INTRODUCE-THE-GAME>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
    <MAIN-LOOP>
>

<INSERT-FILE "parser">

;<INSERT-FILE "Actions">
;<INSERT-FILE "Activities">

<ROOM DARKNESS (DESC "In the Dark") (IN ROOMS)
    (LDESC "It's scary. You can't see anything ...")
>


"The Game"

<ROUTINE SET-THE-SCENE ()
    <SETG HERE DARKNESS>
    <MOVE PLAYER ,HERE>
>

<ROUTINE INTRODUCE-THE-GAME ()
    <TELL CR CR "This game starts in the dark ..." CR>
>

;<INSERT-FILE "Characters">
;<INSERT-FILE "Locations">
;<INSERT-FILE "Scenes">
