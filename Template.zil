"T E M P L A T E"

"THE PROJECT"

"Each ZILF game project must have a name, a description, a release number and a
z-machine version"

<CONSTANT GAME-TITLE "Template">
<CONSTANT GAME-DESCRIPTION
"A ZILF game template by Alex Proudfoot">

<CONSTANT RELEASEID 1> <VERSION ZIP>


"THE MECHANICS"

"Game mechanics are mostly provided by the ZILF Library but can be modified or
enhanced with custom interaction and behaviour which may also be reused as
library extensions."

"Startup"

<ROUTINE GO ()
    <SET-THE-SCENE>
    <INTRODUCE-THE-GAME>
    <MAIN-LOOP>
>

"Library and Extensions"

<INSERT-FILE "parser">
<INSERT-FILE "../Extensions/Scoring">
<INSERT-FILE "../Extensions/Finishing">

"Game Specific Interaction"
"Put syntaxes and verbs here."

"Game Specific Behaviour"
"Put library extension/override code here."

"Extra Game Verbs"

<SETG EXTRA-GAME-VERBS
   '(NOTIFY-OFF NOTIFY-ON SCORE ;"from Scoring"
    )
>

"Library Hooks"

<BIND ((REDEFINE T))
    <DEFMAC HOOK-END-OF-COMMAND ()
       '<BIND ()
            <NOTIFY-IF-SCORE-UPDATED> ;"Scoring"
            <FINISH-IF-CODE-SET>      ;"Finishing"
        >
    >
>


"THE GAME"

"Setting the Scene"

<ROUTINE SET-THE-SCENE ()
    <SETG HERE DARKNESS>
    <MOVE PLAYER ,HERE>
    <SETG MAX-SCORE 0>
>

"Introduction"

<ROUTINE INTRODUCE-THE-GAME ()
    <TELL CR CR "This game starts in the dark ..." CR>
    <CRLF> <V-VERSION>
    <CRLF> <V-LOOK>
>

"Cast"
"Put character objects here."

"Setting"
"Put non-character objects and rooms here."

<ROOM DARKNESS (DESC "In the Dark") (IN ROOMS)
    (LDESC "It's scary. You can't see anything ...")
>

"Plot"
"Put action routines and interrupt routines here along with commentary showing
how they contribute to the story/puzzles."
