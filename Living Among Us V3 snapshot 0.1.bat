@echo off
mode con: cols=68 lines=40

:freshStart
set session=1
set tv=off
set rachel=present
set parents=absent
set location=livingroom
set time=0
set timesWatchedTV=0
set turnsPassed=0
set looked=no
set receivedLookTip=no
set readCoffeeTableBook=no
set readNewspapers=no
set rachelTalkedAboutThermostat=no
set bathroom=unoccupied
set triedLightCandle=no
set alienKey=no
set noticedBasementDevice=no
set suspicion=0
set endSessionOne_cutscene=impending
set lookedUpstairsHall=no
set timesUsedBathroom=0
set deskChairFixed=no
set haveAlienKey=no
set sink=off

set /a endSessionOne=27 + %RANDOM% %% (32 - 27 + 1)
goto titleScreen

:returnLocationAmbient
if "%location%" == "livingroom" goto livingroom_cont
if "%location%" == "kitchen" goto kitchen_cont
if "%location%" == "leaveHouse" goto leaveHouse
if "%location%" == "upstairsHall" goto upstairsHall_cont
if "%location%" == "rachelsBedroom" goto rachelsBedroom_cont
if "%location%" == "upstairsBathroom" goto upstairsBathroom_cont

:returnLocation
if "%location%" == "livingroom" goto livingroom
if "%location%" == "kitchen" goto kitchen
if "%location%" == "leaveHouse" goto leaveHouse
if "%location%" == "upstairsHall" goto upstairsHall
if "%location%" == "rachelsBedroom" goto rachelsBedroom
if "%location%" == "upstairsBathroom" goto upstairsBathroom

:timeDisplay
if %time% == 0 (
echo      ^> It's 5:30 PM.
)
if %time% == 1 (
echo      ^> It's 5:31 PM.
)
if %time% == 2 (
echo      ^> It's 5:32 PM.
)
if %time% == 3 (
echo      ^> It's 5:33 PM.
)
if %time% == 4 (
echo      ^> It's 5:34 PM.
)
if %time% == 5 (
echo      ^> It's 5:35 PM.
)
if %time% == 6 (
echo      ^> It's 5:36 PM.
)
if %time% == 7 (
echo      ^> It's 5:37 PM.
)
if %time% == 8 (
echo      ^> It's 5:38 PM.
)
if %time% == 9 (
echo      ^> It's 5:39 PM.
)
if %time% == 10 (
echo      ^> It's 5:40 PM.
)
if %time% == 11 (
echo      ^> It's 5:41 PM.
)
if %time% == 12 (
echo      ^> It's 5:42 PM.
)
if %time% == 13 (
echo      ^> It's 5:43 PM.
)
if %time% == 14 (
echo      ^> It's 5:44 PM.
)
if %time% == 15 (
echo      ^> It's 5:45 PM.
)
if %time% == 16 (
echo      ^> It's 5:46 PM.
)
if %time% == 17 (
echo      ^> It's 5:47 PM.
)
if %time% == 18 (
echo      ^> It's 5:48 PM.
)
if %time% == 19 (
echo      ^> It's 5:49 PM.
)
if %time% == 20 (
echo      ^> It's 5:50 PM.
)
if %time% == 21 (
echo      ^> It's 5:51 PM.
)
if %time% == 22 (
echo      ^> It's 5:52 PM.
)
if %time% == 23 (
echo      ^> It's 5:53 PM.
)
if %time% == 24 (
echo      ^> It's 5:54 PM.
)
if %time% == 25 (
echo      ^> It's 5:55 PM.
)
if %time% == 26 (
echo      ^> It's 5:56 PM.
)
if %time% == 27 (
echo      ^> It's 5:57 PM.
)
if %time% == 28 (
echo      ^> It's 5:58 PM.
)
if %time% == 29 (
echo      ^> It's 5:59 PM.
)
if %time% == 30 (
echo      ^> It's 6:00 PM.
)
if %time% == 31 (
echo      ^> It's 6:01 PM.
)
if %time% == 32 (
echo      ^> It's 6:02 PM.
)
if %time% == 33 (
echo      ^> It's 6:03 PM.
)
if %time% == 34 (
echo      ^> It's 6:04 PM.
)
if %time% == 35 (
echo      ^> It's 6:05 PM.
)
if %time% == 36 (
echo      ^> It's 6:06 PM.
)
if %time% == 37 (
echo      ^> It's 6:07 PM.
)
if %time% == 38 (
echo      ^> It's 6:08 PM.
)
if %time% == 39 (
echo      ^> It's 6:09 PM.
)
if %time% == 40 (
echo      ^> It's 6:10 PM.
)
if %time% == 41 (
echo      ^> It's 6:11 PM.
)
if %time% == 42 (
echo      ^> It's 6:12 PM.
)
if %time% == 43 (
echo      ^> It's 6:13 PM.
)
if %time% == 44 (
echo      ^> It's 6:14 PM.
)
if %time% == 45 (
echo      ^> It's 6:15 PM.
)
if %time% == 46 (
echo      ^> It's 6:16 PM.
)
if %time% == 47 (
echo      ^> It's 6:17 PM.
)
if %time% == 48 (
echo      ^> It's 6:18 PM.
)
if %time% == 49 (
echo      ^> It's 6:19 PM.
)
if %time% == 50 (
echo      ^> It's 6:20 PM.
)
if %time% == 51 (
echo      ^> It's 6:21 PM.
)
if %time% == 52 (
echo      ^> It's 6:22 PM.
)
if %time% == 53 (
echo      ^> It's 6:23 PM.
)
if %time% == 54 (
echo      ^> It's 6:24 PM.
)
if %time% == 55 (
echo      ^> It's 6:25 PM.
)
if %time% == 56 (
echo      ^> It's 6:26 PM.
)
if %time% == 57 (
echo      ^> It's 6:27 PM.
)
if %time% == 58 (
echo      ^> It's 6:28 PM.
)
if %time% == 59 (
echo      ^> It's 6:29 PM.
)
if %time% == 60 (
echo      ^> It's 6:30 PM.
)
if %time% == 61 (
echo      ^> It's 6:31 PM.
)
if %time% == 62 (
echo      ^> It's 6:32 PM.
)
if %time% == 63 (
echo      ^> It's 6:33 PM.
)
if %time% == 64 (
echo      ^> It's 6:34 PM.
)
if %time% == 65 (
echo      ^> It's 6:35 PM.
)
if %time% == 66 (
echo      ^> It's 6:36 PM.
)
if %time% == 67 (
echo      ^> It's 6:37 PM.
)
if %time% == 68 (
echo      ^> It's 6:38 PM.
)
if %time% == 69 (
echo      ^> It's 6:39 PM.
)
if %time% == 70 (
echo      ^> It's 6:40 PM.
)
if %time% == 71 (
echo      ^> It's 6:41 PM.
)
if %time% == 72 (
echo      ^> It's 6:42 PM.
)
if %time% == 73 (
echo      ^> It's 6:43 PM.
)
if %time% == 74 (
echo      ^> It's 6:44 PM.
)
if %time% == 75 (
echo      ^> It's 6:45 PM.
)
if %time% == 76 (
echo      ^> It's 6:46 PM.
)
if %time% == 77 (
echo      ^> It's 6:47 PM.
)
if %time% == 78 (
echo      ^> It's 6:48 PM.
)
if %time% == 79 (
echo      ^> It's 6:49 PM.
)
if %time% == 80 (
echo      ^> It's 6:50 PM.
)
if %time% == 81 (
echo      ^> It's 6:51 PM.
)
if %time% == 82 (
echo      ^> It's 6:52 PM.
)
if %time% == 83 (
echo      ^> It's 6:53 PM.
)
if %time% == 84 (
echo      ^> It's 6:54 PM.
)
if %time% == 85 (
echo      ^> It's 6:55 PM.
)
if %time% == 86 (
echo      ^> It's 6:56 PM.
)
if %time% == 87 (
echo      ^> It's 6:57 PM.
)
if %time% == 88 (
echo      ^> It's 6:58 PM.
)
if %time% == 89 (
echo      ^> It's 6:59 PM.
)
if %time% == 90 (
echo      ^> It's 7:00 PM.
)

if %time% == 91 (
echo      ^> It's 7:01 PM.
)
if %time% == 92 (
echo      ^> It's 7:02 PM.
)
if %time% == 93 (
echo      ^> It's 7:03 PM.
)
if %time% == 94 (
echo      ^> It's 7:04 PM.
)
if %time% == 95 (
echo      ^> It's 7:05 PM.
)
if %time% == 96 (
echo      ^> It's 7:06 PM.
)
if %time% == 97 (
echo      ^> It's 7:07 PM.
)
if %time% == 98 (
echo      ^> It's 7:08 PM.
)
if %time% == 99 (
echo      ^> It's 7:09 PM.
)
if %time% == 100 (
echo      ^> It's 7:10 PM.
)
if %time% == 101 (
echo      ^> It's 7:11 PM.
)
if %time% == 102 (
echo      ^> It's 7:12 PM.
)
if %time% == 103 (
echo      ^> It's 7:13 PM.
)
if %time% == 104 (
echo      ^> It's 7:14 PM.
)
if %time% == 105 (
echo      ^> It's 7:15 PM.
)
if %time% == 106 (
echo      ^> It's 7:16 PM.
)
if %time% == 107 (
echo      ^> It's 7:17 PM.
)
if %time% == 108 (
echo      ^> It's 7:18 PM.
)
if %time% == 109 (
echo      ^> It's 7:19 PM.
)
if %time% == 110 (
echo      ^> It's 7:20 PM.
)
if %time% == 111 (
echo      ^> It's 7:21 PM.
)
if %time% == 112 (
echo      ^> It's 7:22 PM.
)
if %time% == 113 (
echo      ^> It's 7:23 PM.
)
if %time% == 114 (
echo      ^> It's 7:24 PM.
)
if %time% == 115 (
echo      ^> It's 7:25 PM.
)
if %time% == 116 (
echo      ^> It's 7:26 PM.
)
if %time% == 117 (
echo      ^> It's 7:27 PM.
)
if %time% == 118 (
echo      ^> It's 7:28 PM.
)
if %time% == 119 (
echo      ^> It's 7:29 PM.
)
if %time% == 120 (
echo      ^> It's 7:30 PM.
)


goto returnLocationAmbient

:look
set looked=yes
echo.
echo    You look around.
if "%location%" == "livingroom" (
echo      ^> The living room looks the same as it always has:
echo        TV, couch, reclining arm chair...
echo        At the center of it all is the coffee table,
echo        scattered with papers. Photographs line the walls.
)
if "%location%" == "kitchen" (
echo      ^> The kitchen looks the same as it always has.
echo        The dining table is cluttered with papers. Among
echo        the papers are a lighter and an unlit candle.
echo        The thermostat is beside the refrigerator.
)
if "%location%" == "upstairsHall" (
if "%lookedUpstairsHall%" == "no" (
echo      ^> You don't normally come up here. You know which room
echo        is Rachel's and which is her parents', but you two
echo        mostly just hang out in the basement.
set lookedUpstairsHall=yes
)
if "%lookedUpstairsHall%" == "yes" (
echo      ^> You're in the hallway.
)
echo      ^> There is some art on the wall.
echo      ^> An awful smell is coming from Rachel's room.
)
if "%location%" == "rachelsBedroom" (
echo      ^> The stench of old spilled milk here makes you plug
echo        your nose.
echo      ^> It appears there was an altercation in this room.
if "%deskChairFixed%" == "yes" (
echo        A glass of milk is spilled on Rachel's laptop.
)
if "%deskChairFixed%" == "no" (
echo        A glass of milk is spilled on  Rachel's laptop, and
echo        her desk chair has been knocked over.
)
)

if "%location%" == "upstairsBathroom" (
echo      ^> Everything seems to be in order.
if "%haveAlienKey%%" == "no" (
echo      ^> There is a strange little metal cylinder on the
echo        counter, about the size and shape of chapstick.
)
)

echo.
echo   [Press any key to continue.]
pause >nul
cls
goto returnLocation

:youDontNeedToTakeThat
echo.
echo   You don't need to take that.
echo.
echo   [Press any key to continue.]
pause >nul
cls
goto returnLocation

:gameOver
echo.
echo   Game Over.
echo.
echo   [Press any key to continue.]
pause >nul
cls
goto freshStart

:titleScreen
color 0a
echo.
echo.
echo.
echo       ___      _______      _______ _   _  _____                 
echo      / / ^|    ^|_   _\ \    / /_   _^| \ ^| ^|/ ____^|                
echo     / /^| ^|      ^| ^|  \ \  / /  ^| ^| ^|  \^| ^| ^|  __                 
echo    ^< ^< ^| ^|      ^| ^|   \ \/ /   ^| ^| ^| . ` ^| ^| ^|_ ^|                
echo     \ \^| ^|____ _^| ^|_   \  /   _^| ^|_^| ^|\  ^| ^|__^| ^|                
echo      \_\______^|_____^|__ \/___^|_____^|_^|_\_^|\_____^|   _  _______   
echo            /\   ^|  \/  ^|/ __ \^| \ ^| ^|/ ____^|  ^| ^|  ^| ^|/ ____\ \  
echo           /  \  ^| \  / ^| ^|  ^| ^|  \^| ^| ^|  __   ^| ^|  ^| ^| (___  \ \ 
echo          / /\ \ ^| ^|\/^| ^| ^|  ^| ^| . ` ^| ^| ^|_ ^|  ^| ^|  ^| ^|\___ \  ^> ^>
echo         / ____ \^| ^|  ^| ^| ^|__^| ^| ^|\  ^| ^|__^| ^|  ^| ^|__^| ^|____) ^|/ / 
echo        /_/    \_\_^|  ^|_^|\____/^|_^| \_^|\_____^|   \____/^|_____//_/  
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                 A text-based puzzle adventure
echo                                              by Yustin Riopko
echo.
echo                                  [Press any key to continue.]
pause >nul
color 0f


:introCutScene
cls
echo.
echo       ^> You pull up to Rachel's house and park where you
echo         usually do out front.
echo.
echo     [Press any key to continue.]
pause >nul
cls
echo.
echo       ^> You pull up to Rachel's house and park where you
echo         usually do out front.
echo       ^> As soon as you climb out of your car, the wind whips
echo         at your ears and you pull your hood up. It's only
echo         5:30 PM or so but the sun set over 20 minutes ago.
pause >nul
echo       ^> Your friend, Rachel - who you normally see every day
echo         at work after school - was out sick today and hasn't
echo         been answering your texts.
pause >nul
echo       ^> You reach the door and try to turn the handle, but
echo         it's locked. So you knock.
pause >nul
echo       ^> After a few moments, you hear a little "Click!" and
echo         the door opens just a few inches. Rachel peeks out
echo         from behind it, wide-eyed.
pause >nul
echo       ^> "Yes?"
pause >nul
echo       ^> You came to check up on her, and maybe hang out or
echo         something, you say.
pause >nul
echo       ^> "Hang out... Right, okay." She opens the door the
echo         rest of the way and steps backward to let you in.
pause >nul
echo       ^> As you enter she asks, "By the way, what did you say
echo         my name is again?"
pause >nul
echo       ^> Rachel Wheeler? Weird question...
pause >nul
echo       ^> You hurry inside and close the door, shivering.
pause >nul
echo       ^> Rachel shouts, "Mother! Father! Shawn is here to
echo        hang out!"
pause >nul
echo       ^> Soon, Rachel's parents appear at the top of the
echo         stairs and come down to the landing.
pause >nul
echo       ^> Mr. Wheeler extends his hand and says, "Nice to meet
echo         you!"
pause >nul
echo       ^> You've known Rachel for months and her parents
echo         almost just as long. For Halloween, all three of them
echo         dressed up in cloaks and fangs and pretended to be
echo         vampires all night.
pause >nul
echo       ^> That was almost three months ago, but maybe they're
echo         just messing around again.
pause >nul
echo       ^> You shake Mr. Wheeler's hand and laugh politely at
echo         his joke. Then you turn to Mrs. Wheeler, who curtsies
echo         and smiles. "It's a pleasure to meet you," she says.
pause >nul
echo       ^> These greetings are followed by a pause just long
echo         and awkward enough to make you to reach up and
echo         scratch the back of your head.
pause >nul
echo       ^> You decide to say something.
pause >nul
echo       ^> The only thing that comes to mind is how cold it is
echo         inside the house.
pause >nul
echo       ^> Mr. Wheeler and Rachel are both wearing short-sleeve
echo         t-shirts and shorts.
pause >nul
echo       ^> Mrs. Wheeler, in a yellow sun dress, starts, "Well,
echo         where we come from-" but she's cut short by a sharp
echo         jab in the side from her husband.
pause >nul
echo       ^> They told you before they're from Florida...
pause >nul
echo       ^> "Well," Rachel's dad says. "I guess we had better
echo         let you kids get to whatever it is kids are doing
echo         these days.
pause >nul
echo       ^> "Your mother and I will come back down and start
echo         making supper around six o'clock, okay?" He raises
echo         his eyebrows at Rachel.
pause >nul
echo       ^> Then, Mr. and Mrs. Wheeler disappear back up the
echo         stairs and around the corner.
pause >nul
echo.
echo     [Press any key to continue.]
pause >nul
cls
goto livingroom

:leaveHouse
set location=leaveHouse
cls
echo.
echo    You start to leave.
echo      ^> Your hand hovers over the door knob.
echo.
echo    [Are you going home?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1

if "%input%" == "yes" goto leaveHouseConfirm
if "%input%" == "yep" goto leaveHouseConfirm
if "%input%" == "yup" goto leaveHouseConfirm
if "%input%" == "ayuh" goto leaveHouseConfirm
if "%input%" == "yeah" goto leaveHouseConfirm
if "%input%" == "yea" goto leaveHouseConfirm
if "%input%" == "ye" goto leaveHouseConfirm
if "%input%" == "y" goto leaveHouseConfirm
if "%input%" == "sure" goto leaveHouseConfirm

if "%input%" == "no" goto leaveHouseDeny
if "%input%" == "nope" goto leaveHouseDeny
if "%input%" == "nah" goto leaveHouseDeny
if "%input%" == "n" goto leaveHouseDeny
if "%input%" == "no" goto leaveHouseDeny
if "%input%" == "no" goto leaveHouseDeny

if "%input%" == "noInput" (
cls
goto leaveHouse
)
goto commandError

:leaveHouseConfirm
echo.
echo    You leave.
echo      ^> You get in your car, turn on the heat and
echo        blow this popsicle stand.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver

:leaveHouseDeny
echo.
echo    Then there's no reason to go out there!
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=livingroom
goto livingroom

:attackRachel
echo.
echo    You attack Rachel!
echo      ^> She shrieks unhumanly and procures a cylindrical
echo        thermos-shaped tool. "We cannot have you interfering with
echo        our plans." Before you can stop her, she swiftly presses
echo        the thing to your skin.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver

:livingroom
if %session% == 2 (
set parents=absent
)
if %time% GTR %endSessionOne% (
if not "%endSessionOne_cutscene%" == "over" (
goto cutscene_parentsComeDownstairs
)
)
if %session% == 2 (
if "%rachel%" == "present" (
goto rachelLeavesForSession2
)
)
echo.
echo    You are in the living room.
goto timeDisplay
:livingroom_cont
if "%rachel%" == "present" (
echo      ^> Rachel is here.
)
if "%parents%" == "present" (
echo      ^> Mr. and Mrs. Wheeler are here.
)
if "%rachel%" == "absent" (
if "%parents%" == "absent" (
echo      ^> You are alone.
)
)
if "%tv%" == "off" (
echo      ^> The TV is off.
)
if "%tv%" == "on" (
echo      ^> The TV is on.
)
echo      ^> Some papers are scattered on the coffee table.
echo      ^> From here you can go upstairs, enter the kitchen,
echo       enter the bathroom, or go outside.
if %turnsPassed% GTR 5 (
if "%looked%" == "no" (
echo.
echo      ^> ^(Try looking around.^)
)
)

echo.
echo    [What do you do?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1
if "%input%" == "turn on tv" goto turnTV_on
if "%input%" == "turn tv on" goto turnTV_on
if "%input%" == "tv on" goto turnTV_on
if "%input%" == "turnon tv" goto turnTV_on
if "%input%" == "turn off tv" goto turnTV_off
if "%input%" == "tv off" goto turnTV_off
if "%input%" == "turn tv off" goto turnTV_off
if "%input%" == "turnoff tv" goto turnTV_off
if "%input%" == "watch tv" goto watchTV
if "%input%" == "look" goto look
if "%input%" == "look around" goto look
if "%input%" == "talk to rachel" goto talkTo_Rachel
if "%input%" == "talk with rachel" goto talkTo_Rachel
if "%input%" == "say hi to rachel" goto talkTo_Rachel
if "%input%" == "search coffee table" goto examine_coffeeTable
if "%input%" == "coffee table" goto examine_coffeeTable
if "%input%" == "examine coffee table" goto examine_coffeeTable
if "%input%" == "look at coffee table" goto examine_coffeeTable
if "%input%" == "look coffee table" goto examine_coffeeTable
if "%input%" == "search table" goto 
if "%input%" == "table" goto examine_coffeeTable
if "%input%" == "examine table" goto examine_coffeeTable
if "%input%" == "look at table" goto examine_coffeeTable
if "%input%" == "look table" goto examine_coffeeTable
if "%input%" == "look through papers" goto examine_coffeeTablePapers
if "%input%" == "read papers" goto examine_coffeeTablePapers
if "%input%" == "search papers" goto examine_coffeeTablePapers
if "%input%" == "papers" goto examine_coffeeTablePapers
if "%input%" == "examine papers" goto examine_coffeeTablePapers
if "%input%" == "look at papers" goto examine_coffeeTablePapers
if "%input%" == "look papers" goto examine_coffeeTablePapers
if "%input%" == "look through paper" goto examine_coffeeTablePapers
if "%input%" == "read paper" goto examine_coffeeTablePapers
if "%input%" == "search paper" goto examine_coffeeTablePapers
if "%input%" == "paper" goto examine_coffeeTablePapers
if "%input%" == "examine paper" goto examine_coffeeTablePapers
if "%input%" == "look at paper" goto examine_coffeeTablePapers
if "%input%" == "look paper" goto examine_coffeeTablePapers
if "%input%" == "take papers" goto youDontNeedToTakeThat
if "%input%" == "steal papers" goto youDontNeedToTakeThat
if "%input%" == "pick up papers" goto youDontNeedToTakeThat
if "%input%" == "pick papers up" goto youDontNeedToTakeThat
if "%input%" == "grab papers" goto youDontNeedToTakeThat
if "%input%" == "take paper" goto youDontNeedToTakeThat
if "%input%" == "steal paper" goto youDontNeedToTakeThat
if "%input%" == "pick up paper" goto youDontNeedToTakeThat
if "%input%" == "pick paper up" goto youDontNeedToTakeThat
if "%input%" == "grab paper" goto youDontNeedToTakeThat
if "%input%" == "take rachel" goto youDontNeedToTakeThat
if "%input%" == "steal rachel" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel" goto youDontNeedToTakeThat
if "%input%" == "pick rachel up" goto youDontNeedToTakeThat
if "%input%" == "grab rachel" goto youDontNeedToTakeThat
if "%input%" == "take picture" goto youDontNeedToTakeThat
if "%input%" == "steal picture" goto youDontNeedToTakeThat
if "%input%" == "pick up picture" goto youDontNeedToTakeThat
if "%input%" == "pick picture up" goto youDontNeedToTakeThat
if "%input%" == "grab picture" goto youDontNeedToTakeThat
if "%input%" == "take photographs" goto youDontNeedToTakeThat
if "%input%" == "steal photographs" goto youDontNeedToTakeThat
if "%input%" == "pick up photographs" goto youDontNeedToTakeThat
if "%input%" == "pick photographs up" goto youDontNeedToTakeThat
if "%input%" == "grab photographs" goto youDontNeedToTakeThat
if "%input%" == "take photograph" goto youDontNeedToTakeThat
if "%input%" == "steal photograph" goto youDontNeedToTakeThat
if "%input%" == "pick up photograph" goto youDontNeedToTakeThat
if "%input%" == "pick photograph up" goto youDontNeedToTakeThat
if "%input%" == "grab photograph" goto youDontNeedToTakeThat
if "%input%" == "take book" goto youDontNeedToTakeThat
if "%input%" == "steal book" goto youDontNeedToTakeThat
if "%input%" == "pick up book" goto youDontNeedToTakeThat
if "%input%" == "pick book up" goto youDontNeedToTakeThat
if "%input%" == "grab book" goto youDontNeedToTakeThat
if "%input%" == "flip to channel 67" goto flipToChannel67
if "%input%" == "flip tv to channel 67" goto flipToChannel67
if "%input%" == "change channel to 67" goto flipToChannel67
if "%input%" == "go to channel 67" goto flipToChannel67
if "%input%" == "change tv to channel 67" goto flipToChannel67
if "%input%" == "search rachel" goto examine_photographsLivingRoom
if "%input%" == "rachel" goto examine_photographsLivingRoom
if "%input%" == "examine rachel" goto examine_photographsLivingRoom
if "%input%" == "look at rachel" goto examine_photographsLivingRoom
if "%input%" == "look rachel" goto examine_photographsLivingRoom
if "%input%" == "search picture" goto examine_photographsLivingRoom
if "%input%" == "picture" goto examine_photographsLivingRoom
if "%input%" == "examine picture" goto examine_photographsLivingRoom
if "%input%" == "look at picture" goto examine_photographsLivingRoom
if "%input%" == "look picture" goto examine_photographsLivingRoom
if "%input%" == "search photos" goto examine_photographsLivingRoom
if "%input%" == "photos" goto examine_photographsLivingRoom
if "%input%" == "examine photos" goto examine_photographsLivingRoom
if "%input%" == "look at photos" goto examine_photographsLivingRoom
if "%input%" == "look photos" goto examine_photographsLivingRoom
if "%input%" == "search photo" goto examine_photographsLivingRoom
if "%input%" == "photo" goto examine_photographsLivingRoom
if "%input%" == "examine photo" goto examine_photographsLivingRoom
if "%input%" == "look at photo" goto examine_photographsLivingRoom
if "%input%" == "look photo" goto examine_photographsLivingRoom
if "%input%" == "search pictures" goto examine_photographsLivingRoom
if "%input%" == "pictures" goto examine_photographsLivingRoom
if "%input%" == "examine pictures" goto examine_photographsLivingRoom
if "%input%" == "look at pictures" goto examine_photographsLivingRoom
if "%input%" == "look pictures" goto examine_photographsLivingRoom
if "%input%" == "search photographs" goto examine_photographsLivingRoom
if "%input%" == "photographs" goto examine_photographsLivingRoom
if "%input%" == "examine photographs" goto examine_photographsLivingRoom
if "%input%" == "look at photographs" goto examine_photographsLivingRoom
if "%input%" == "look photographs" goto examine_photographsLivingRoom
if "%input%" == "search photograph" goto examine_photographsLivingRoom
if "%input%" == "photograph" goto examine_photographsLivingRoom
if "%input%" == "examine photograph" goto examine_photographsLivingRoom
if "%input%" == "look at photograph" goto examine_photographsLivingRoom
if "%input%" == "look photograph" goto examine_photographsLivingRoom
if "%input%" == "search book" goto examine_coffeeTableBook
if "%input%" == "book" goto examine_coffeeTableBook
if "%input%" == "examine book" goto examine_coffeeTableBook
if "%input%" == "look at book" goto examine_coffeeTableBook
if "%input%" == "look book" goto examine_coffeeTableBook
if "%input%" == "read book" goto examine_coffeeTableBook
if "%input%" == "search recliner" goto examine_recliner
if "%input%" == "recliner" goto examine_recliner
if "%input%" == "examine recliner" goto examine_recliner
if "%input%" == "look at recliner" goto examine_recliner
if "%input%" == "look recliner" goto examine_recliner
if "%input%" == "search chair" goto examine_recliner
if "%input%" == "chair" goto examine_recliner
if "%input%" == "examine chair" goto examine_recliner
if "%input%" == "look at chair" goto examine_recliner
if "%input%" == "look chair" goto examine_recliner
if "%input%" == "search armchair" goto examine_recliner
if "%input%" == "armchair" goto examine_recliner
if "%input%" == "examine armchair" goto examine_recliner
if "%input%" == "look at armchair" goto examine_recliner
if "%input%" == "look armchair" goto examine_recliner
if "%input%" == "search arm chair" goto examine_recliner
if "%input%" == "arm chair" goto examine_recliner
if "%input%" == "examine arm chair" goto examine_recliner
if "%input%" == "look at arm chair" goto examine_recliner
if "%input%" == "look arm chair" goto examine_recliner
if "%input%" == "search reclining armchair" goto examine_recliner
if "%input%" == "reclining armchair" goto examine_recliner
if "%input%" == "examine reclining armchair" goto examine_recliner
if "%input%" == "look at reclining armchair" goto examine_recliner
if "%input%" == "look reclining armchair" goto examine_recliner
if "%input%" == "search reclining arm chair" goto examine_recliner
if "%input%" == "reclining arm chair" goto examine_recliner
if "%input%" == "examine reclining arm chair" goto examine_recliner
if "%input%" == "look at reclining arm chair" goto examine_recliner
if "%input%" == "look reclining arm chair" goto examine_recliner
if "%input%" == "search reclining chair" goto examine_recliner
if "%input%" == "reclining chair" goto examine_recliner
if "%input%" == "examine reclining chair" goto examine_recliner
if "%input%" == "look at reclining chair" goto examine_recliner
if "%input%" == "look reclining chair" goto examine_recliner
if "%input%" == "search couch" goto examine_couch
if "%input%" == "couch" goto examine_couch
if "%input%" == "examine couch" goto examine_couch
if "%input%" == "look at couch" goto examine_couch
if "%input%" == "look couch" goto examine_couch
if "%input%" == "search sofa" goto examine_couch
if "%input%" == "sofa" goto examine_couch
if "%input%" == "examine sofa" goto examine_couch
if "%input%" == "look at sofa" goto examine_couch
if "%input%" == "look sofa" goto examine_couch
if "%input%" == "search tv" goto examine_tv
if "%input%" == "tv" goto examine_tv
if "%input%" == "examine tv" goto examine_tv
if "%input%" == "look at tv" goto examine_tv
if "%input%" == "look tv" goto examine_tv
if "%input%" == "search television" goto examine_tv
if "%input%" == "television" goto examine_tv
if "%input%" == "examine television" goto examine_tv
if "%input%" == "look at television" goto examine_tv
if "%input%" == "look television" goto examine_tv
if "%input%" == "sit" goto sit_recliner
if "%input%" == "sit down" goto sit_recliner
if "%input%" == "sit in recliner" goto sit_recliner
if "%input%" == "sit on recliner" goto sit_recliner
if "%input%" == "sit down in recliner" goto sit_recliner
if "%input%" == "sit down on recliner" goto sit_recliner
if "%input%" == "sit in chair" goto sit_recliner
if "%input%" == "sit on chair" goto sit_recliner
if "%input%" == "sit down in chair" goto sit_recliner
if "%input%" == "sit down on chair" goto sit_recliner
if "%input%" == "sit in armchair" goto sit_recliner
if "%input%" == "sit on armchair" goto sit_recliner
if "%input%" == "sit down in armchair" goto sit_recliner
if "%input%" == "sit down on armchair" goto sit_recliner
if "%input%" == "sit in arm chair" goto sit_recliner
if "%input%" == "sit on arm chair" goto sit_recliner
if "%input%" == "sit down in arm chair" goto sit_recliner
if "%input%" == "sit down on arm chair" goto sit_recliner
if "%input%" == "sit in reclining armchair" goto sit_recliner
if "%input%" == "sit on reclining armchair" goto sit_recliner
if "%input%" == "sit down in reclining armchair" goto sit_recliner
if "%input%" == "sit down on reclining armchair" goto sit_recliner
if "%input%" == "sit in reclining arm chair" goto sit_recliner
if "%input%" == "sit on reclining arm chair" goto sit_recliner
if "%input%" == "sit down in reclining arm chair" goto sit_recliner
if "%input%" == "sit down on reclining arm chair" goto sit_recliner
if "%input%" == "sit in reclining chair" goto sit_recliner
if "%input%" == "sit on reclining chair" goto sit_recliner
if "%input%" == "sit down in reclining chair" goto sit_recliner
if "%input%" == "sit down on reclining chair" goto sit_recliner
if "%input%" == "sit in couch" goto sit_couch
if "%input%" == "sit on couch" goto sit_couch
if "%input%" == "sit down in couch" goto sit_couch
if "%input%" == "sit down on couch" goto sit_couch
if "%input%" == "sit in sofa" goto sit_couch
if "%input%" == "sit on sofa" goto sit_couch
if "%input%" == "sit down in sofa" goto sit_couch
if "%input%" == "sit down on sofa" goto sit_couch
if "%input%" == "smell air" goto smellair_livingroom
if "%input%" == "smell the air" goto smellair_livingroom
if "%input%" == "look under couch" goto lookUnderFurniture
if "%input%" == "look beneath couch" goto lookUnderFurniture
if "%input%" == "look under sofa" goto lookUnderFurniture
if "%input%" == "look beneath sofa" goto lookUnderFurniture
if "%input%" == "check under couch" goto lookUnderFurniture
if "%input%" == "check beneath couch" goto lookUnderFurniture
if "%input%" == "check under sofa" goto lookUnderFurniture
if "%input%" == "check beneath sofa" goto lookUnderFurniture
if "%input%" == "look under chair" goto lookUnderFurniture
if "%input%" == "look beneath chair" goto lookUnderFurniture
if "%input%" == "check under chair" goto lookUnderFurniture
if "%input%" == "check beneath chair" goto lookUnderFurniture
if "%input%" == "look under reclining chair" goto lookUnderFurniture
if "%input%" == "look beneath reclining chair" goto lookUnderFurniture
if "%input%" == "check under reclining chair" goto lookUnderFurniture
if "%input%" == "check beneath reclining chair" goto lookUnderFurniture
if "%input%" == "look under armchair" goto lookUnderFurniture
if "%input%" == "look beneath armchair" goto lookUnderFurniture
if "%input%" == "check under armchair" goto lookUnderFurniture
if "%input%" == "check beneath armchair" goto lookUnderFurniture
if "%input%" == "look under arm chair" goto lookUnderFurniture
if "%input%" == "look beneath arm chair" goto lookUnderFurniture
if "%input%" == "check under arm chair" goto lookUnderFurniture
if "%input%" == "check beneath arm chair" goto lookUnderFurniture
if "%input%" == "look under reclining armchair" goto lookUnderFurniture
if "%input%" == "look beneath reclining armchair" goto lookUnderFurniture
if "%input%" == "check under reclining armchair" goto lookUnderFurniture
if "%input%" == "check beneath reclining armchair" goto lookUnderFurniture
if "%input%" == "look under reclining arm chair" goto lookUnderFurniture
if "%input%" == "look beneath reclining arm chair" goto lookUnderFurniture
if "%input%" == "check under reclining arm chair" goto lookUnderFurniture
if "%input%" == "check beneath reclining arm chair" goto lookUnderFurniture
if "%input%" == "look under recliner" goto lookUnderFurniture
if "%input%" == "look beneath recliner" goto lookUnderFurniture
if "%input%" == "check under recliner" goto lookUnderFurniture
if "%input%" == "check beneath recliner" goto lookUnderFurniture
if "%input%" == "look under coffee table" goto lookUnderFurniture
if "%input%" == "look beneath coffee table" goto lookUnderFurniture
if "%input%" == "check under coffee table" goto lookUnderFurniture
if "%input%" == "check beneath coffee table" goto lookUnderFurniture
if "%input%" == "look under table" goto lookUnderFurniture
if "%input%" == "look beneath table" goto lookUnderFurniture
if "%input%" == "check under table" goto lookUnderFurniture
if "%input%" == "check beneath table" goto 
if "%input%" == "kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "go kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "go to kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "enter kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "move to kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "walk to kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "go into kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "move into kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "walk into kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "kitchen" goto moveFromLivingRoomToKitchen
if "%input%" == "go bathroom" goto downstairsBathroom
if "%input%" == "go bath room" goto downstairsBathroom
if "%input%" == "go to bathroom" goto downstairsBathroom
if "%input%" == "enter bathroom" goto downstairsBathroom
if "%input%" == "move to bathroom" goto downstairsBathroom
if "%input%" == "walk to bathroom" goto downstairsBathroom
if "%input%" == "go into bathroom" goto downstairsBathroom
if "%input%" == "move into bathroom" goto downstairsBathroom
if "%input%" == "walk into bathroom" goto downstairsBathroom
if "%input%" == "bathroom" goto downstairsBathroom
if "%input%" == "go to restroom" goto downstairsBathroom
if "%input%" == "enter restroom" goto downstairsBathroom
if "%input%" == "move to restroom" goto downstairsBathroom
if "%input%" == "walk to restroom" goto downstairsBathroom
if "%input%" == "go into restroom" goto downstairsBathroom
if "%input%" == "move into restroom" goto downstairsBathroom
if "%input%" == "walk into restroom" goto downstairsBathroom
if "%input%" == "restroom" goto downstairsBathroom
if "%input%" == "go to bath room" goto downstairsBathroom
if "%input%" == "enter bath room" goto downstairsBathroom
if "%input%" == "move to bath room" goto downstairsBathroom
if "%input%" == "walk to bath room" goto downstairsBathroom
if "%input%" == "go into bath room" goto downstairsBathroom
if "%input%" == "move into bath room" goto downstairsBathroom
if "%input%" == "walk into bath room" goto downstairsBathroom
if "%input%" == "bath room" goto downstairsBathroom
if "%input%" == "go to rest room" goto downstairsBathroom
if "%input%" == "enter rest room" goto downstairsBathroom
if "%input%" == "move to rest room" goto downstairsBathroom
if "%input%" == "walk to rest room" goto downstairsBathroom
if "%input%" == "go into rest room" goto downstairsBathroom
if "%input%" == "move into rest room" goto downstairsBathroom
if "%input%" == "walk into rest room" goto downstairsBathroom
if "%input%" == "rest room" goto downstairsBathroom
if "%input%" == "go restroom" goto downstairsBathroom
if "%input%" == "go rest room" goto downstairsBathroom
if "%input%" == "upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go to upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk to upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move to upstairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go to up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk to up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move to up stairs" goto moveFromDownstairsToUpstairsHall
if "%input%" == "up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "go to up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "walk to up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "move to up" goto moveFromDownstairsToUpstairsHall
if "%input%" == "leave" goto leaveHouse
if "%input%" == "outside" goto leaveHouse
if "%input%" == "go outside" goto leaveHouse
if "%input%" == "walk outside" goto leaveHouse
if "%input%" == "move outside" goto leaveHouse
if "%input%" == "go to outside" goto leaveHouse
if "%input%" == "walk to outside" goto leaveHouse
if "%input%" == "move to outside" goto leaveHouse
if "%input%" == "outdoors" goto leaveHouse
if "%input%" == "go outdoors" goto leaveHouse
if "%input%" == "walk outdoors" goto leaveHouse
if "%input%" == "move outdoors" goto leaveHouse
if "%input%" == "go to outdoors" goto leaveHouse
if "%input%" == "walk to outdoors" goto leaveHouse
if "%input%" == "move to outdoors" goto leaveHouse
if "%input%" == "out" goto leaveHouse
if "%input%" == "go out" goto leaveHouse
if "%input%" == "walk out" goto leaveHouse
if "%input%" == "move out" goto leaveHouse
if "%input%" == "go to out" goto leaveHouse
if "%input%" == "walk to out" goto leaveHouse
if "%input%" == "move to out" goto leaveHouse
if "%input%" == "smack her" goto attackRachel
if "%input%" == "punch her" goto attackRachel
if "%input%" == "hit her" goto attackRachel
if "%input%" == "kick her" goto attackRachel
if "%input%" == "fight her" goto attackRachel
if "%input%" == "attack her" goto attackRachel
if "%input%" == "grab her" goto attackRachel
if "%input%" == "smack rachel" goto attackRachel
if "%input%" == "punch rachel" goto attackRachel
if "%input%" == "hit rachel" goto attackRachel
if "%input%" == "kick rachel" goto attackRachel
if "%input%" == "fight rachel" goto attackRachel
if "%input%" == "attack rachel" goto attackRachel
if "%input%" == "grab rachel" goto attackRachel
if "%input%" == "take off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "take off rachels face" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's face" goto takeOffRachelsDisguise
if "%input%" == "remove rachels face" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels face" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels face" goto takeOffRachelsDisguise
if "%input%" == "take rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "take rachels face off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels face off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels face off" goto takeOffRachelsDisguise
if "%input%" == "take off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "take off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "remove rachels mask" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "take rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "take rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "take off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "take off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "remove rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "take rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "take rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "take thermos" goto takeWeapon_fromRachel
if "%input%" == "steal thermos" goto takeWeapon_fromRachel
if "%input%" == "grab thermos" goto takeWeapon_fromRachel
if "%input%" == "take thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos from her" goto takeWeapon_fromRachel
if "%input%" == "take device" goto takeWeapon_fromRachel
if "%input%" == "steal device" goto takeWeapon_fromRachel
if "%input%" == "grab device" goto takeWeapon_fromRachel
if "%input%" == "take device from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal device from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab device from rachel" goto takeWeapon_fromRachel
if "%input%" == "take device from her" goto takeWeapon_fromRachel
if "%input%" == "steal device from her" goto takeWeapon_fromRachel
if "%input%" == "grab device from her" goto takeWeapon_fromRachel
if "%input%" == "take tool" goto takeWeapon_fromRachel
if "%input%" == "steal tool" goto takeWeapon_fromRachel
if "%input%" == "grab tool" goto takeWeapon_fromRachel
if "%input%" == "take tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylinder" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder" goto takeWeapon_fromRachel
if "%input%" == "take cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take weapon" goto takeWeapon_fromRachel
if "%input%" == "steal weapon" goto takeWeapon_fromRachel
if "%input%" == "grab weapon" goto takeWeapon_fromRachel
if "%input%" == "take weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "take weapon from her" goto takeWeapon_fromRachel
if "%input%" == "steal weapon from her" goto takeWeapon_fromRachel
if "%input%" == "grab weapon from her" goto takeWeapon_fromRachel
if "%input%" == "take thing" goto takeWeapon_fromRachel
if "%input%" == "steal thing" goto takeWeapon_fromRachel
if "%input%" == "grab thing" goto takeWeapon_fromRachel
if "%input%" == "take thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thing from her" goto takeWeapon_fromRachel
if "%input%" == "steal thing from her" goto takeWeapon_fromRachel
if "%input%" == "grab thing from her" goto takeWeapon_fromRachel
if "%input%" == "take taser" goto takeWeapon_fromRachel
if "%input%" == "steal taser" goto takeWeapon_fromRachel
if "%input%" == "grab taser" goto takeWeapon_fromRachel
if "%input%" == "take taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "take taser from her" goto takeWeapon_fromRachel
if "%input%" == "steal taser from her" goto takeWeapon_fromRachel
if "%input%" == "grab taser from her" goto takeWeapon_fromRachel

if "%input%" == "wait 30 min" goto wait30Min
if "%input%" == "wait 30 minutes" goto wait30Min
if "%input%" == "wait for 30 min" goto wait30Min
if "%input%" == "wait for 30 minutes" goto wait30Min

if "%input%" == "rachel" goto examine_Rachel
if "%input%" == "examine rachel" goto examine_Rachel
if "%input%" == "look at rachel" goto examine_Rachel
if "%input%" == "check out rachel" goto examine_Rachel
if "%input%" == "check rachel out" goto examine_Rachel
if "%input%" == "look rachel" goto examine_Rachel
if "%input%" == "examine her" goto examine_Rachel
if "%input%" == "look at her" goto examine_Rachel
if "%input%" == "look her" goto examine_Rachel
if "%input%" == "check her out" goto examine_Rachel

if "%input%" == "knock door" goto knockBathroomDoor
if "%input%" == "knock on door" goto knockBathroomDoor
if "%input%" == "knock at door" goto knockBathroomDoor
if "%input%" == "knock bathroom door" goto knockBathroomDoor
if "%input%" == "knock on bathroom door" goto knockBathroomDoor
if "%input%" == "knock at bathroom door" goto knockBathroomDoor
if "%input%" == "knock bath room door" goto knockBathroomDoor
if "%input%" == "knock on bath room door" goto knockBathroomDoor
if "%input%" == "knock at bath room door" goto knockBathroomDoor
if "%input%" == "knock restroom door" goto knockBathroomDoor
if "%input%" == "knock on restroom door" goto knockBathroomDoor
if "%input%" == "knock at restroom door" goto knockBathroomDoor
if "%input%" == "knock rest room door" goto knockBathroomDoor
if "%input%" == "knock on rest room door" goto knockBathroomDoor
if "%input%" == "knock at rest room door" goto knockBathroomDoor

if "%input%" == "examine margins" goto examine_doodles
if "%input%" == "read margins" goto examine_doodles
if "%input%" == "look at margins" goto examine_doodles
if "%input%" == "look margins" goto examine_doodles
if "%input%" == "margins" goto examine_doodles

if "%input%" == "examine margin" goto examine_doodles
if "%input%" == "read margin" goto examine_doodles
if "%input%" == "look at margin" goto examine_doodles
if "%input%" == "look margin" goto examine_doodles
if "%input%" == "margin" goto examine_doodles

if "%input%" == "examine doodles" goto examine_doodles
if "%input%" == "read doodles" goto examine_doodles
if "%input%" == "look at doodles" goto examine_doodles
if "%input%" == "look doodles" goto examine_doodles
if "%input%" == "doodles" goto examine_doodles

if "%input%" == "examine doodle" goto examine_doodles
if "%input%" == "read doodle" goto examine_doodles
if "%input%" == "look at doodle" goto examine_doodles
if "%input%" == "look doodle" goto examine_doodles
if "%input%" == "doodle" goto examine_doodles

if "%input%" == "knock" goto knockBathroomDoor


if "%input%" == "noInput" (
cls
goto livingroom
)
goto commandError

:commandError
echo.
echo    That command doesn't work.
echo.
echo    PLEASE READ THIS AT LEAST ONCE!
echo      ^> Try rewording.
echo      ^> Also, keep these things in mind about commands:
echo         - Use only lowercase letters.
echo         - Don't use articles, like "the" or "a".
echo.
echo      ^> If you're using those tips and you have reworded
echo        your command a few times, your command might not
echo        be in the game. If you think it should be, contact
echo        Yustin with suggestions.
echo.
echo      ^> Thank you for playing :^)
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation

:knockBathroomDoor
echo.
echo    You knock on the bathroom door.
if "%bathroom%" == "occupied" (
echo      ^> "Uh, I'll be right out," Rachel stammers nervously.
echo        "Don't go anywhere, okay?"
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation
)
echo      ^> Nothing happens.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:wait30Min
echo.
echo    You wait for thirty minutes.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 30
goto returnLocation

:takeOffRachelsDisguise
if "%rachel%" == "absent" goto commandError
echo.
echo    You reach to remove Rachel's disguise.
echo      ^> You know this isn't the real Rachel.
echo        As your hand extends toward her face, she is quick to
echo        block your advance. "That's it," she says in a humming
echo        voice unlike her own. "We cannot have you interfering
echo        with our plans." She procures a cylindrical thermos-
echo        shaped tool and swiftly presses it to your skin before
echo        you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver

:nothingHappens
echo.
echo    Nothing happens.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation

:talkTo_Rachel
echo.
if "%rachel%" == "absent" goto commandError
set /a talkToRachel=1 + %RANDOM% %% (10 - 1 + 1)
echo    You talk to Rachel.
if %talkToRachel% == 1 (
set /a time=%time% + 1
echo      ^> "Hey, Rachel. How do you get a baby alien to sleep?"
echo      ^> She stares at you blankly.
echo      ^> "You ROCKET!"
echo      ^> "...Actually," Rachel says. "Humans use rockets.
echo        Aliens use barrel crafts... Probably."
)
if %talkToRachel% == 2 (
set /a time=%time% + 1
echo      ^> "Hey, Rachel. What do aliens serve their food on?"
echo      ^> She stares at you blankly.
echo      ^> "A flying SAUCER!"
echo      ^> "...That shape is so unaerodynamic," Rachel says. 
echo        Aliens actually use barrel crafts... Probably."
)
if %talkToRachel% == 3 (
echo      ^> "We can watch TV, if you would like," Rachel offers.
)
if %talkToRachel% == 4 (
echo      ^> "My favorite time to eat dinner is when our planet
echo        is exactly three fourths of the way through a
echo        rotation," Rachel says.
)
if %talkToRachel% == 5 (
echo      ^> "It sure does get dark at an earlier point in Earth's
echo        rotation when it's at this point in its revolution of
echo        the sun," Rachel says.
)
if %talkToRachel% == 6 (
echo      ^> "Make yourself at home," Rachel says.
)
if %talkToRachel% == 7 (
echo      ^> "We were not expecting any company," Rachel says.
)
if %talkToRachel% == 8 (
echo      ^> "So, you said your name is Shawn..."
echo        "I'll try to remember that."
)
if %talkToRachel% == 9 (
echo      ^> "I sure am hungry for food right now," Rachel says.
)
if %talkToRachel% == 10 (
echo      ^> "We installed some new things around the house, but
echo        it's nothing special," Rachel says. "So if you see
echo        anything, do not worry about it."
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:examine_Rachel
if "%rachel%" == "absent" goto commandError
echo.
echo    You examine Rachel.
echo      ^> She has long dark red hair. She's wearing short
echo        short sleeves and shorts, even though it has to be
echo        below 40 degrees in here...
echo      ^> She may be acting weird, but she looks fine as ever.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:downstairsBathroom
echo.
if "%bathroom%" == "occupied" (
echo    You try to go to the bathroom.
echo      ^> It's occupied.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom
)
set /a timesUsedBathroom=%timesUsedBathroom% + 1
set /a downstairsBathroomText=1 + %RANDOM% %% (10 - 1 + 1)
echo   You go to the bathroom.
if %downstairsBathroomText% == 1 (
echo      ^> You leak the lizard and wash your hands before
echo        returning to the living room.
)
if %downstairsBathroomText% == 2 (
echo      ^> You drain the dragon and wash your hands before
echo        returning to the living room.
)
if %downstairsBathroomText% == 3 (
echo      ^> You free the chocolate hostages and wash your hands
echo        before returning to the living room.
)
if %downstairsBathroomText% == 4 (
echo      ^> You hatch the brown trout and wash your hands before
echo        returning to the living room.
)
if %downstairsBathroomText% == 5 (
echo      ^> You go where even the king goes alone and wash your
echo        hands before returning to the living room.
)
if %downstairsBathroomText% == 6 (
echo      ^> You make your bladder gladder and wash your hands
echo        before returning to the living room.
)
if %downstairsBathroomText% == 7 (
echo      ^> You visit the urination station and wash your hands
echo        before returning to the living room.
)
if %downstairsBathroomText% == 8 (
echo      ^> You drop the kids off at the pool and wash your
echo        hands before returning to the living room.
)
if %downstairsBathroomText% == 9 (
echo      ^> You lay some brick and wash your hands before
echo        returning to the living room.
)
if %downstairsBathroomText% == 10 (
echo      ^> You reign on the porcelain throne a moment and wash
echo        your hands before returning to the living room.
)
if %timesUsedBathroom% == 3 (
echo      ^> As you exit the bathroom for the third time, Rachel
echo        gives you a funny look.
)
if %timesUsedBathroom% == 4 (
echo      ^> As the man writing this game, I am genuinely
echo        alarmed by the amount of times you have decided to
echo        use the bathroom.
)
if %timesUsedBathroom% == 5 (
echo      ^> This is not a fucking bathroom simulator.
)
if %timesUsedBathroom% == 6 (
echo      ^> You're literally out of time. You can't even look
echo        for clues because you just spent half an hour
echo        reading bathroom euphemisms.
)
if %timesUsedBathroom% == 6 (
echo      ^> I'm over it.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 5
goto livingroom

:lookUnderFurniture
echo.
echo    You check, but there's nothing there.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:flipToChannel67
echo.
if %tv% == off (
echo    You attempt to flip to channel 67.
echo      ^> You can't change the channel. The TV is off.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom
)
echo    You flip to channel 67.
echo      ^> Teehee, it's two away from channel 69.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto livingroom

:smellair_livingroom
echo.
echo    You smell the air.
echo      ^> It doesn't seem Mrs. Wheeler has a candle lit like
echo        she usually does.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom

:examine_photographsLivingRoom
echo.
echo    You examine the photographs.
echo      ^> They're mostly family photos.
echo      ^> On the mantle, there is a picture from just a couple
echo        months ago when the Wheelers dressed up as vampires for
echo        Halloween. You're in it.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto livingroom

:examine_doodles
echo.
echo    You examine the doodles.
echo      ^> Nothing special. Just little shapes and stuff drawn
echo        while someone was bored or distracted.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom

:examine_coffeeTable
echo.
echo    You examine the coffee table.
echo      ^> It has a mahogany frame and a glass surface.
echo        Scattered upon it are some papers and a book
echo        among other things.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom

:examine_coffeeTableBook
echo.
echo    You examine the book.
echo      ^> It's an antiquated copy of "How to Social: Learn the
echo        Ins and Outs of Formal and Informal Western Social 
echo        Culture". There's no way it's any newer than 1970.
echo.
echo      ^> You leaf through the pages to get a feel for its
echo        topics, which range greetings, first impressions,
echo        maintaining relationships, and the differences between
echo        formal and informal settings and interactions.
if "%readCoffeeTableBook%" == "no" (
echo.
echo      ^> Rachel says, "Human culture is particularly
echo        interesting in that it varies drastically
echo        geographically." When'd she become a sociology major
echo        or whatever...^?
set readCoffeeTableBook=yes
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 4
goto livingroom

:examine_recliner
echo.
echo    You examine the reclining arm chair.
echo      ^> Upon closer inspection it is still a reclining
echo        arm chair.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom

:sit_recliner
echo.
echo    You sit in the reclining arm chair.
echo      ^> You ease it back and kick out the footrest.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom

:examine_couch
echo.
echo    You examine the couch.
echo      ^> A long cozy sofa.
if "%rachel%" == "present" (
echo        Plenty of room for both you and Rachel.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom

:sit_couch
echo.
echo    You sit on the couch.
if "%rachel%" == "present" (
echo      ^> Rachel sits down beside you.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom

:examine_coffeeTablePapers
echo.
echo    You examine the papers.
echo      ^> They're bills and invoices. Boring stuff, really.
echo        Little doodles adorn the margins of some.
echo      ^> You also notice a book under the papers.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto livingroom

:examine_tv
echo.
echo    You examine the tv.
echo      ^> It's a 60-inch Sony flat screen.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom

:turnTV_on
echo.
if %tv% == on (
echo    You attempt to turn the TV on.
echo      ^> The TV is already on.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom
)
echo    You turn the TV on.
set tv=on
if %timesWatchedTV% GTR 0 (
goto trivialTV
)
echo      ^> It's a breaking news broadcast.
echo      ^> Evidently, what locals first believed was an earthquake
echo        was actually caused by a large meteor-like object.
echo      ^> As the camera man approaches the crater, the thing begins
echo        to look less and less like a meteor.
echo      ^> It's a metal cylinder, like a giant Pringles can, still
echo        glowing red with heat.
echo      ^> Washington is sending experts, and citizens are advised
echo        to keep safely away from the mysterious object.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 5
set /a timesWatchedTV=%timesWatchedTV% + 1
goto livingroom

:turnTV_off
echo.
if %tv% == off (
echo    You attempt to turn the TV off.
echo      ^> The TV is already off.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom
)
set tv=off
echo    You turn the TV off.
echo      ^> Click!
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto livingroom

:watchTV
echo.
if %tv% == off (
echo    You watch the TV for a while.
echo      ^> It's kind of boring...
echo        ...Would maybe be more interesting if the TV were on.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom
)
if %tv% == on (
echo    You watch TV.
)
if %timesWatchedTV% GTR 0 (
goto trivialTV
)
echo      ^> It's a breaking news broadcast.
echo      ^> Evidently, what locals first believed was an earthquake
echo        was actually caused by a large meteor-like object.
echo      ^> As the camera man approaches the crater, the thing begins
echo        to look less and less like a meteor.
echo      ^> It's a metal cylinder, like a giant Pringles can, still
echo        glowing red with heat.
echo      ^> Washington is sending experts, and citizens are advised
echo        to keep safely away from the mysterious object.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 5
set /a timesWatchedTV=%timesWatchedTV% + 1
goto livingroom

:trivialTV
echo      ^> There's nothing interesting on.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 3
set /a timesWatchedTV=%timesWatchedTV% + 1
goto livingroom

:moveFromLivingRoomToKitchen
echo.
echo    You enter the kitchen.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=kitchen
set /a time=%time% + 1
goto kitchen

:moveFromKitchenToLivingRoom
echo.
echo    You enter the living room.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=livingroom
set /a time=%time% + 1
goto livingroom

:kitchen
if %session% == 2 (
set parents=present
)
if %time% GTR %endSessionOne% (
if not "%endSessionOne_cutscene%" == "over" (
goto cutscene_parentsComeDownstairs
)
)
echo.
echo    You are in the kitchen.
goto timeDisplay
:kitchen_cont
if "%rachel%" == "present" (
echo      ^> Rachel is here.
)
if "%parents%" == "present" (
echo      ^> Mr. and Mrs. Wheeler are here.
)
if "%rachel%" == "absent" (
if "%parents%" == "absent" (
echo      ^> You are alone.
)
)
echo      ^> Some papers are scattered on the dining table.
echo      ^> From here you can go to the living room or
echo        downstairs to the basement.
if %turnsPassed% GTR 5 (
if "%looked%" == "no" (
echo.
echo      ^> ^(Try looking around.^)
)
)
echo.
echo   [What do you do?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1
if "%input%" == "look" goto look
if "%input%" == "look around" goto look
if "%input%" == "talk to rachel" goto talkTo_Rachel
if "%input%" == "talk with rachel" goto talkTo_Rachel
if "%input%" == "say hi to rachel" goto talkTo_Rachel
if "%input%" == "search table" goto examine_diningTable
if "%input%" == "table" goto examine_diningTable
if "%input%" == "examine table" goto examine_diningTable
if "%input%" == "look at table" goto examine_diningTable
if "%input%" == "look table" goto examine_diningTable
if "%input%" == "search dining table" goto examine_diningTable
if "%input%" == "dining table" goto examine_diningTable
if "%input%" == "examine dining table" goto examine_diningTable
if "%input%" == "look at dining table" goto examine_diningTable
if "%input%" == "look dining table" goto examine_diningTable
if "%input%" == "search kitchen table" goto examine_diningTable
if "%input%" == "kitchen table" goto examine_diningTable
if "%input%" == "examine kitchen table" goto examine_diningTable
if "%input%" == "look at kitchen table" goto examine_diningTable
if "%input%" == "look kitchen table" goto examine_diningTable
if "%input%" == "look through paper" goto examine_diningTablePapers
if "%input%" == "read paper" goto examine_diningTablePapers
if "%input%" == "search paper" goto examine_diningTablePapers
if "%input%" == "paper" goto examine_diningTablePapers
if "%input%" == "examine paper" goto examine_diningTablePapers
if "%input%" == "look at paper" goto examine_diningTablePapers
if "%input%" == "look paper" goto examine_diningTablePapers
if "%input%" == "look through papers" goto examine_diningTablePapers
if "%input%" == "read papers" goto examine_diningTablePapers
if "%input%" == "search papers" goto examine_diningTablePapers
if "%input%" == "papers" goto examine_diningTablePapers
if "%input%" == "examine papers" goto examine_diningTablePapers
if "%input%" == "look at papers" goto examine_diningTablePapers
if "%input%" == "look papers" goto examine_diningTablePapers
if "%input%" == "look through newspapers" goto examine_diningTablePapers
if "%input%" == "search newspapers" goto examine_diningTablePapers
if "%input%" == "newspapers" goto examine_diningTablePapers
if "%input%" == "examine newspapers" goto examine_diningTablePapers
if "%input%" == "look at newspapers" goto examine_diningTablePapers
if "%input%" == "look newspapers" goto examine_diningTablePapers
if "%input%" == "look through news papers" goto examine_diningTablePapers
if "%input%" == "search news papers" goto examine_diningTablePapers
if "%input%" == "news papers" goto examine_diningTablePapers
if "%input%" == "examine news papers" goto examine_diningTablePapers
if "%input%" == "look at news papers" goto examine_diningTablePapers
if "%input%" == "look news papers" goto examine_diningTablePapers
if "%input%" == "look through newspaper" goto examine_diningTablePapers
if "%input%" == "search newspaper" goto examine_diningTablePapers
if "%input%" == "newspaper" goto examine_diningTablePapers
if "%input%" == "examine newspaper" goto examine_diningTablePapers
if "%input%" == "look at newspaper" goto examine_diningTablePapers
if "%input%" == "look newspaper" goto examine_diningTablePapers
if "%input%" == "look through news paper" goto examine_diningTablePapers
if "%input%" == "search news paper" goto examine_diningTablePapers
if "%input%" == "news paper" goto examine_diningTablePapers
if "%input%" == "examine news paper" goto examine_diningTablePapers
if "%input%" == "look at news paper" goto examine_diningTablePapers
if "%input%" == "look news paper" goto examine_diningTablePapers
if "%input%" == "look under dining table" goto lookUnderFurniture
if "%input%" == "look beneath dining table" goto lookUnderFurniture
if "%input%" == "check under dining table" goto lookUnderFurniture
if "%input%" == "check beneath dining table" goto lookUnderFurniture
if "%input%" == "look under kitchen table" goto lookUnderFurniture
if "%input%" == "look beneath kitchen table" goto lookUnderFurniture
if "%input%" == "check under kitchen table" goto lookUnderFurniture
if "%input%" == "check beneath kitchen table" goto lookUnderFurniture
if "%input%" == "look under table" goto lookUnderFurniture
if "%input%" == "look beneath table" goto lookUnderFurniture
if "%input%" == "check under table" goto lookUnderFurniture
if "%input%" == "check beneath table" goto lookUnderFurniture
if "%input%" == "go living room" goto moveFromKitchenToLivingRoom
if "%input%" == "go livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "go to living room" goto moveFromKitchenToLivingRoom
if "%input%" == "enter living room" goto moveFromKitchenToLivingRoom
if "%input%" == "move to living room" goto moveFromKitchenToLivingRoom
if "%input%" == "walk to living room" goto moveFromKitchenToLivingRoom
if "%input%" == "go into living room" goto moveFromKitchenToLivingRoom
if "%input%" == "move into living room" goto moveFromKitchenToLivingRoom
if "%input%" == "walk into living room" goto moveFromKitchenToLivingRoom
if "%input%" == "living room" goto moveFromKitchenToLivingRoom
if "%input%" == "go to livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "enter livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "move to livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "walk to livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "go into livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "move into livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "walk into livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "livingroom" goto moveFromKitchenToLivingRoom
if "%input%" == "take lighter" goto youDontNeedToTakeThat
if "%input%" == "steal lighter" goto youDontNeedToTakeThat
if "%input%" == "pick up lighter" goto youDontNeedToTakeThat
if "%input%" == "pick lighter up" goto youDontNeedToTakeThat
if "%input%" == "grab lighter" goto youDontNeedToTakeThat
if "%input%" == "take candle" goto youDontNeedToTakeThat
if "%input%" == "steal candle" goto youDontNeedToTakeThat
if "%input%" == "pick up candle" goto youDontNeedToTakeThat
if "%input%" == "pick candle up" goto youDontNeedToTakeThat
if "%input%" == "grab candle" goto youDontNeedToTakeThat
if "%input%" == "take papers" goto youDontNeedToTakeThat
if "%input%" == "steal papers" goto youDontNeedToTakeThat
if "%input%" == "pick up papers" goto youDontNeedToTakeThat
if "%input%" == "pick papers up" goto youDontNeedToTakeThat
if "%input%" == "grab papers" goto youDontNeedToTakeThat
if "%input%" == "take paper" goto youDontNeedToTakeThat
if "%input%" == "steal paper" goto youDontNeedToTakeThat
if "%input%" == "pick up paper" goto youDontNeedToTakeThat
if "%input%" == "pick paper up" goto youDontNeedToTakeThat
if "%input%" == "grab paper" goto youDontNeedToTakeThat
if "%input%" == "take newspapers" goto youDontNeedToTakeThat
if "%input%" == "steal newspapers" goto youDontNeedToTakeThat
if "%input%" == "pick up newspapers" goto youDontNeedToTakeThat
if "%input%" == "pick newspapers up" goto youDontNeedToTakeThat
if "%input%" == "grab newspapers" goto youDontNeedToTakeThat
if "%input%" == "take newspaper" goto youDontNeedToTakeThat
if "%input%" == "steal newspaper" goto youDontNeedToTakeThat
if "%input%" == "pick up newspaper" goto youDontNeedToTakeThat
if "%input%" == "pick newspaper up" goto youDontNeedToTakeThat
if "%input%" == "grab newspaper" goto youDontNeedToTakeThat
if "%input%" == "take news papers" goto youDontNeedToTakeThat
if "%input%" == "steal news papers" goto youDontNeedToTakeThat
if "%input%" == "pick up news papers" goto youDontNeedToTakeThat
if "%input%" == "pick news papers up" goto youDontNeedToTakeThat
if "%input%" == "grab news papers" goto youDontNeedToTakeThat
if "%input%" == "take news paper" goto youDontNeedToTakeThat
if "%input%" == "steal news paper" goto youDontNeedToTakeThat
if "%input%" == "pick up news paper" goto youDontNeedToTakeThat
if "%input%" == "pick news paper up" goto youDontNeedToTakeThat
if "%input%" == "grab news paper" goto youDontNeedToTakeThat
if "%input%" == "search lighter" goto examine_lighter
if "%input%" == "lighter" goto examine_lighter
if "%input%" == "examine lighter" goto examine_lighter
if "%input%" == "look at lighter" goto examine_lighter
if "%input%" == "look lighter" goto examine_lighter
if "%input%" == "search candle" goto examine_candle
if "%input%" == "candle" goto examine_candle
if "%input%" == "examine candle" goto examine_candle
if "%input%" == "look at candle" goto examine_candle
if "%input%" == "look candle" goto examine_candle
if "%input%" == "view thermostat" goto examine_thermostat
if "%input%" == "check thermostat" goto examine_thermostat
if "%input%" == "search thermostat" goto examine_thermostat
if "%input%" == "thermostat" goto examine_thermostat
if "%input%" == "examine thermostat" goto examine_thermostat
if "%input%" == "look at thermostat" goto examine_thermostat
if "%input%" == "look thermostat" goto examine_thermostat
if "%input%" == "search refrigerator" goto examine_refrigerator
if "%input%" == "refrigerator" goto examine_refrigerator
if "%input%" == "examine refrigerator" goto examine_refrigerator
if "%input%" == "look at refrigerator" goto examine_refrigerator
if "%input%" == "look refrigerator" goto examine_refrigerator
if "%input%" == "search fridge" goto examine_refrigerator
if "%input%" == "fridge" goto examine_refrigerator
if "%input%" == "examine fridge" goto examine_refrigerator
if "%input%" == "look at fridge" goto examine_refrigerator
if "%input%" == "look fridge" goto examine_refrigerator
if "%input%" == "use thermostat" goto use_thermostat
if "%input%" == "poke thermostat" goto use_thermostat
if "%input%" == "change thermostat" goto use_thermostat
if "%input%" == "touch thermostat" goto use_thermostat
if "%input%" == "mess with thermostat" goto use_thermostat
if "%input%" == "turn up thermostat" goto use_thermostat
if "%input%" == "turn thermostat up" goto use_thermostat
if "%input%" == "turn down thermostat" goto use_thermostat
if "%input%" == "turn thermostat down" goto use_thermostat
if "%input%" == "turn on thermostat" goto use_thermostat
if "%input%" == "turn thermostat on" goto use_thermostat
if "%input%" == "turn off thermostat" goto use_thermostat
if "%input%" == "turn thermostat off" goto use_thermostat
if "%input%" == "use panel" goto use_device
if "%input%" == "poke panel" goto use_device
if "%input%" == "change panel" goto use_device
if "%input%" == "touch panel" goto use_device
if "%input%" == "mess with panel" goto use_device
if "%input%" == "turn up panel" goto use_device
if "%input%" == "turn panel up" goto use_device
if "%input%" == "turn down panel" goto use_device
if "%input%" == "turn panel down" goto use_device
if "%input%" == "turn on panel" goto use_device
if "%input%" == "turn panel on" goto use_device
if "%input%" == "turn off panel" goto use_device
if "%input%" == "turn panel off" goto use_device
if "%input%" == "use metal panel" goto use_device
if "%input%" == "mess with metal panel" goto use_device
if "%input%" == "turn up metal panel" goto use_device
if "%input%" == "turn metal panel up" goto use_device
if "%input%" == "turn down metal panel" goto use_device
if "%input%" == "turn metal panel down" goto use_device
if "%input%" == "turn on metal panel" goto use_device
if "%input%" == "turn metal panel on" goto use_device
if "%input%" == "turn off metal panel" goto use_device
if "%input%" == "turn metal panel off" goto use_device
if "%input%" == "use thin metal panel" goto use_device
if "%input%" == "mess with thin metal panel" goto use_device
if "%input%" == "turn up thin metal panel" goto use_device
if "%input%" == "turn thin metal panel up" goto use_device
if "%input%" == "turn down thin metal panel" goto use_device
if "%input%" == "turn thin metal panel down" goto use_device
if "%input%" == "turn on thin metal panel" goto use_device
if "%input%" == "turn thin metal panel on" goto use_device
if "%input%" == "turn off thin metal panel" goto use_device
if "%input%" == "turn thin metal panel off" goto use_device
if "%input%" == "use device" goto use_device
if "%input%" == "mess with device" goto use_device
if "%input%" == "turn up device" goto use_device
if "%input%" == "turn device up" goto use_device
if "%input%" == "turn down device" goto use_device
if "%input%" == "turn device down" goto use_device
if "%input%" == "turn on device" goto use_device
if "%input%" == "turn device on" goto use_device
if "%input%" == "turn off device" goto use_device
if "%input%" == "turn device off" goto use_device
if "%input%" == "take magnets" goto youDontNeedToTakeThat
if "%input%" == "steal magnets" goto youDontNeedToTakeThat
if "%input%" == "pick up magnets" goto youDontNeedToTakeThat
if "%input%" == "pick magnets up" goto youDontNeedToTakeThat
if "%input%" == "grab magnets" goto youDontNeedToTakeThat
if "%input%" == "take magnet" goto youDontNeedToTakeThat
if "%input%" == "steal magnet" goto youDontNeedToTakeThat
if "%input%" == "pick up magnet" goto youDontNeedToTakeThat
if "%input%" == "pick magnet up" goto youDontNeedToTakeThat
if "%input%" == "grab magnet" goto youDontNeedToTakeThat
if "%input%" == "take notes" goto youDontNeedToTakeThat
if "%input%" == "steal notes" goto youDontNeedToTakeThat
if "%input%" == "pick up notes" goto youDontNeedToTakeThat
if "%input%" == "pick notes up" goto youDontNeedToTakeThat
if "%input%" == "grab notes" goto youDontNeedToTakeThat
if "%input%" == "take note" goto youDontNeedToTakeThat
if "%input%" == "steal note" goto youDontNeedToTakeThat
if "%input%" == "pick up note" goto youDontNeedToTakeThat
if "%input%" == "pick note up" goto youDontNeedToTakeThat
if "%input%" == "grab note" goto youDontNeedToTakeThat
if "%input%" == "search magnet" goto examine_magnets
if "%input%" == "magnet" goto examine_magnets
if "%input%" == "examine magnet" goto examine_magnets
if "%input%" == "look at magnet" goto examine_magnets
if "%input%" == "look magnet" goto examine_magnets
if "%input%" == "search magnets" goto examine_magnets
if "%input%" == "magnets" goto examine_magnets
if "%input%" == "examine magnets" goto examine_magnets
if "%input%" == "look at magnets" goto examine_magnets
if "%input%" == "look magnets" goto examine_magnets
if "%input%" == "search note" goto 
if "%input%" == "note" goto examine_notes
if "%input%" == "examine note" goto examine_notes
if "%input%" == "look at note" goto examine_notes
if "%input%" == "look note" goto examine_notes
if "%input%" == "read note" goto examine_notes
if "%input%" == "search notes" goto examine_notes
if "%input%" == "notes" goto examine_notes
if "%input%" == "examine notes" goto examine_notes
if "%input%" == "look at notes" goto examine_notes
if "%input%" == "look notes" goto examine_notes
if "%input%" == "read notes" goto examine_notes
if "%input%" == "burn candle" goto lightCandle
if "%input%" == "light candle" goto lightCandle
if "%input%" == "use lighter" goto lightCandle
if "%input%" == "use lighter on candle" goto lightCandle
if "%input%" == "light candle with lighter" goto lightCandle
if "%input%" == "use lighter to light candle" goto lightCandle
if "%input%" == "smell candle" goto smellCandle
if "%input%" == "sniff candle" goto smellCandle
if "%input%" == "smell unlit candle" goto smellCandle
if "%input%" == "sniff unlit candle" goto smellCandle
if "%input%" == "burn papers" goto burnPapers
if "%input%" == "burn papers with lighter" goto burnPapers
if "%input%" == "light papers" goto burnPapers
if "%input%" == "light papers on fire" goto burnPapers
if "%input%" == "light papers with lighter" goto burnPapers
if "%input%" == "light papers on fire with lighter" goto burnPapers
if "%input%" == "use lighter on papers" goto burnPapers
if "%input%" == "use lighter to light papers" goto burnPapers
if "%input%" == "use lighter to burn papers" goto burnPapers
if "%input%" == "burn paper" goto burnPapers
if "%input%" == "burn paper with lighter" goto burnPapers
if "%input%" == "light paper" goto burnPapers
if "%input%" == "light paper on fire" goto burnPapers
if "%input%" == "light paper with lighter" goto burnPapers
if "%input%" == "light paper on fire with lighter" goto burnPapers
if "%input%" == "use lighter on paper" goto burnPapers
if "%input%" == "use lighter to light paper" goto burnPapers
if "%input%" == "use lighter to burn paper" goto burnPapers
if "%input%" == "down" goto moveFromKitchenToBasement
if "%input%" == "go down" goto moveFromKitchenToBasement
if "%input%" == "go to down" goto moveFromKitchenToBasement
if "%input%" == "move down" goto moveFromKitchenToBasement
if "%input%" == "move to down" goto moveFromKitchenToBasement
if "%input%" == "walk down" goto moveFromKitchenToBasement
if "%input%" == "walk to down" goto moveFromKitchenToBasement
if "%input%" == "downstairs" goto moveFromKitchenToBasement
if "%input%" == "go downstairs" goto moveFromKitchenToBasement
if "%input%" == "go to downstairs" goto moveFromKitchenToBasement
if "%input%" == "move downstairs" goto moveFromKitchenToBasement
if "%input%" == "move to downstairs" goto moveFromKitchenToBasement
if "%input%" == "walk downstairs" goto moveFromKitchenToBasement
if "%input%" == "walk to downstairs" goto moveFromKitchenToBasement
if "%input%" == "down stairs" goto moveFromKitchenToBasement
if "%input%" == "go down stairs" goto moveFromKitchenToBasement
if "%input%" == "go to down stairs" goto moveFromKitchenToBasement
if "%input%" == "move down stairs" goto moveFromKitchenToBasement
if "%input%" == "move to down stairs" goto moveFromKitchenToBasement
if "%input%" == "walk down stairs" goto moveFromKitchenToBasement
if "%input%" == "walk to down stairs" goto moveFromKitchenToBasement
if "%input%" == "cellar" goto moveFromKitchenToBasement
if "%input%" == "go cellar" goto moveFromKitchenToBasement
if "%input%" == "go to cellar" goto moveFromKitchenToBasement
if "%input%" == "move cellar" goto moveFromKitchenToBasement
if "%input%" == "move to cellar" goto moveFromKitchenToBasement
if "%input%" == "walk cellar" goto moveFromKitchenToBasement
if "%input%" == "walk to cellar" goto moveFromKitchenToBasement
if "%input%" == "basement" goto moveFromKitchenToBasement
if "%input%" == "go basement" goto moveFromKitchenToBasement
if "%input%" == "go to basement" goto moveFromKitchenToBasement
if "%input%" == "move basement" goto moveFromKitchenToBasement
if "%input%" == "move to basement" goto moveFromKitchenToBasement
if "%input%" == "walk basement" goto moveFromKitchenToBasement
if "%input%" == "walk to basement" goto moveFromKitchenToBasement
if "%input%" == "base ment" goto moveFromKitchenToBasement
if "%input%" == "go base ment" goto moveFromKitchenToBasement
if "%input%" == "go to base ment" goto moveFromKitchenToBasement
if "%input%" == "move base ment" goto moveFromKitchenToBasement
if "%input%" == "move to base ment" goto moveFromKitchenToBasement
if "%input%" == "walk base ment" goto moveFromKitchenToBasement
if "%input%" == "walk to base ment" goto moveFromKitchenToBasement
if "%input%" == "punch interface" goto breakDevice
if "%input%" == "kick interface" goto breakDevice
if "%input%" == "hit interface" goto breakDevice
if "%input%" == "break interface" goto breakDevice
if "%input%" == "smash interface" goto breakDevice
if "%input%" == "destroy interface" goto breakDevice
if "%input%" == "punch foreign interface" goto breakDevice
if "%input%" == "kick foreign interface" goto breakDevice
if "%input%" == "hit foreign interface" goto breakDevice
if "%input%" == "break foreign interface" goto breakDevice
if "%input%" == "smash foreign interface" goto breakDevice
if "%input%" == "destroy foreign interface" goto breakDevice
if "%input%" == "punch box" goto breakDevice
if "%input%" == "kick box" goto breakDevice
if "%input%" == "hit box" goto breakDevice
if "%input%" == "break box" goto breakDevice
if "%input%" == "smash box" goto breakDevice
if "%input%" == "destroy box" goto breakDevice
if "%input%" == "punch device" goto breakDevice
if "%input%" == "kick device" goto breakDevice
if "%input%" == "hit device" goto breakDevice
if "%input%" == "break device" goto breakDevice
if "%input%" == "smash device" goto breakDevice
if "%input%" == "destroy device" goto breakDevice
if "%input%" == "punch panel" goto breakDevice
if "%input%" == "kick panel" goto breakDevice
if "%input%" == "hit panel" goto breakDevice
if "%input%" == "break panel" goto breakDevice
if "%input%" == "smash panel" goto breakDevice
if "%input%" == "destroy panel" goto breakDevice
if "%input%" == "punch metal box" goto breakDevice
if "%input%" == "kick metal box" goto breakDevice
if "%input%" == "hit metal box" goto breakDevice
if "%input%" == "break metal box" goto breakDevice
if "%input%" == "smash metal box" goto breakDevice
if "%input%" == "destroy metal box" goto breakDevice
if "%input%" == "punch metal device" goto breakDevice
if "%input%" == "kick metal device" goto breakDevice
if "%input%" == "hit metal device" goto breakDevice
if "%input%" == "break metal device" goto breakDevice
if "%input%" == "smash metal device" goto breakDevice
if "%input%" == "destroy metal device" goto breakDevice
if "%input%" == "punch metal panel" goto breakDevice
if "%input%" == "kick metal panel" goto breakDevice
if "%input%" == "hit metal panel" goto breakDevice
if "%input%" == "break metal panel" goto breakDevice
if "%input%" == "smash metal panel" goto breakDevice
if "%input%" == "destroy metal panel" goto breakDevice
if "%input%" == "punch thin metal panel" goto breakDevice
if "%input%" == "kick thin metal panel" goto breakDevice
if "%input%" == "hit thin metal panel" goto breakDevice
if "%input%" == "break thin metal panel" goto breakDevice
if "%input%" == "smash thin metal panel" goto breakDevice
if "%input%" == "destroy thin metal panel" goto breakDevice
if "%input%" == "smack her" goto attackRachel
if "%input%" == "punch her" goto attackRachel
if "%input%" == "hit her" goto attackRachel
if "%input%" == "kick her" goto attackRachel
if "%input%" == "fight her" goto attackRachel
if "%input%" == "attack her" goto attackRachel
if "%input%" == "grab her" goto attackRachel
if "%input%" == "smack rachel" goto attackRachel
if "%input%" == "punch rachel" goto attackRachel
if "%input%" == "hit rachel" goto attackRachel
if "%input%" == "kick rachel" goto attackRachel
if "%input%" == "fight rachel" goto attackRachel
if "%input%" == "attack rachel" goto attackRachel
if "%input%" == "grab rachel" goto attackRachel
if "%input%" == "take off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "take off rachels face" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's face" goto takeOffRachelsDisguise
if "%input%" == "remove rachels face" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels face" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's face" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels face" goto takeOffRachelsDisguise
if "%input%" == "take rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "take rachels face off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels face off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's face off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels face off" goto takeOffRachelsDisguise
if "%input%" == "take off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "take off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "remove rachels mask" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's mask" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels mask" goto takeOffRachelsDisguise
if "%input%" == "take rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "take rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's mask off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels mask off" goto takeOffRachelsDisguise
if "%input%" == "take off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "take off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "remove rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "remove rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "rip off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "rip off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "pull off rachel's disguise" goto takeOffRachelsDisguise
if "%input%" == "pull off rachels disguise" goto takeOffRachelsDisguise
if "%input%" == "take rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "take rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "rip rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "rip rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "pull rachel's disguise off" goto takeOffRachelsDisguise
if "%input%" == "pull rachels disguise off" goto takeOffRachelsDisguise
if "%input%" == "interface" goto examineAlienDevice
if "%input%" == "examine interface" goto examineAlienDevice
if "%input%" == "search interface" goto examineAlienDevice
if "%input%" == "look interface" goto examineAlienDevice
if "%input%" == "look at interface" goto examineAlienDevice
if "%input%" == "foreign interface" goto examineAlienDevice
if "%input%" == "examine foreign interface" goto examineAlienDevice
if "%input%" == "search foreign interface" goto examineAlienDevice
if "%input%" == "look foreign interface" goto examineAlienDevice
if "%input%" == "look at foreign interface" goto examineAlienDevice
if "%input%" == "box" goto examineAlienDevice
if "%input%" == "examine box" goto examineAlienDevice
if "%input%" == "search box" goto examineAlienDevice
if "%input%" == "look box" goto examineAlienDevice
if "%input%" == "look at box" goto examineAlienDevice
if "%input%" == "examine door" goto examineAlienDevice
if "%input%" == "search door" goto examineAlienDevice
if "%input%" == "look door" goto examineAlienDevice
if "%input%" == "look at door" goto examineAlienDevice
if "%input%" == "examine thing on door" goto examineAlienDevice
if "%input%" == "search thing on door" goto examineAlienDevice
if "%input%" == "look thing on door" goto examineAlienDevice
if "%input%" == "look at thing on door" goto examineAlienDevice
if "%input%" == "device" goto examineAlienDevice
if "%input%" == "examine device" goto examineAlienDevice
if "%input%" == "search device" goto examineAlienDevice
if "%input%" == "look device" goto examineAlienDevice
if "%input%" == "look at device" goto examineAlienDevice
if "%input%" == "panel" goto examineAlienDevice
if "%input%" == "examine panel" goto examineAlienDevice
if "%input%" == "search panel" goto examineAlienDevice
if "%input%" == "look panel" goto examineAlienDevice
if "%input%" == "look at panel" goto examineAlienDevice
if "%input%" == "metal box" goto examineAlienDevice
if "%input%" == "examine metal box" goto examineAlienDevice
if "%input%" == "search metal box" goto examineAlienDevice
if "%input%" == "look metal box" goto examineAlienDevice
if "%input%" == "look at metal box" goto examineAlienDevice
if "%input%" == "metal device" goto examineAlienDevice
if "%input%" == "examine metal device" goto examineAlienDevice
if "%input%" == "search metal device" goto examineAlienDevice
if "%input%" == "look metal device" goto examineAlienDevice
if "%input%" == "look at metal device" goto examineAlienDevice
if "%input%" == "metal panel" goto examineAlienDevice
if "%input%" == "examine metal panel" goto examineAlienDevice
if "%input%" == "search metal panel" goto examineAlienDevice
if "%input%" == "look metal panel" goto examineAlienDevice
if "%input%" == "look at metal panel" goto examineAlienDevice
if "%input%" == "thin metal panel" goto examineAlienDevice
if "%input%" == "examine thin metal panel" goto examineAlienDevice
if "%input%" == "search thin metal panel" goto examineAlienDevice
if "%input%" == "look thin metal panel" goto examineAlienDevice
if "%input%" == "look at thin metal panel" goto examineAlienDevice
if "%input%" == "cut wires" goto cutWires
if "%input%" == "tear wires" goto cutWires
if "%input%" == "rip wires" goto cutWires
if "%input%" == "break wires" goto cutWires
if "%input%" == "snip wires" goto cutWires
if "%input%" == "separate wires" goto cutWires
if "%input%" == "sever wires" goto cutWires
if "%input%" == "take thermos" goto takeWeapon_fromRachel
if "%input%" == "steal thermos" goto takeWeapon_fromRachel
if "%input%" == "grab thermos" goto takeWeapon_fromRachel
if "%input%" == "take thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos from her" goto takeWeapon_fromRachel
if "%input%" == "take device" goto takeWeapon_fromRachel
if "%input%" == "steal device" goto takeWeapon_fromRachel
if "%input%" == "grab device" goto takeWeapon_fromRachel
if "%input%" == "take device from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal device from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab device from rachel" goto takeWeapon_fromRachel
if "%input%" == "take device from her" goto takeWeapon_fromRachel
if "%input%" == "steal device from her" goto takeWeapon_fromRachel
if "%input%" == "grab device from her" goto takeWeapon_fromRachel
if "%input%" == "take tool" goto takeWeapon_fromRachel
if "%input%" == "steal tool" goto takeWeapon_fromRachel
if "%input%" == "grab tool" goto takeWeapon_fromRachel
if "%input%" == "take tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylinder" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder" goto takeWeapon_fromRachel
if "%input%" == "take cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylinder from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical tool from her" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos-shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool from rachel" goto takeWeapon_fromRachel
if "%input%" == "take cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "steal cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "grab cylindrical thermos shaped tool from her" goto takeWeapon_fromRachel
if "%input%" == "take weapon" goto takeWeapon_fromRachel
if "%input%" == "steal weapon" goto takeWeapon_fromRachel
if "%input%" == "grab weapon" goto takeWeapon_fromRachel
if "%input%" == "take weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab weapon from rachel" goto takeWeapon_fromRachel
if "%input%" == "take weapon from her" goto takeWeapon_fromRachel
if "%input%" == "steal weapon from her" goto takeWeapon_fromRachel
if "%input%" == "grab weapon from her" goto takeWeapon_fromRachel
if "%input%" == "take thing" goto takeWeapon_fromRachel
if "%input%" == "steal thing" goto takeWeapon_fromRachel
if "%input%" == "grab thing" goto takeWeapon_fromRachel
if "%input%" == "take thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab thing from rachel" goto takeWeapon_fromRachel
if "%input%" == "take thing from her" goto takeWeapon_fromRachel
if "%input%" == "steal thing from her" goto takeWeapon_fromRachel
if "%input%" == "grab thing from her" goto takeWeapon_fromRachel
if "%input%" == "take taser" goto takeWeapon_fromRachel
if "%input%" == "steal taser" goto takeWeapon_fromRachel
if "%input%" == "grab taser" goto takeWeapon_fromRachel
if "%input%" == "take taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "steal taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "grab taser from rachel" goto takeWeapon_fromRachel
if "%input%" == "take taser from her" goto takeWeapon_fromRachel
if "%input%" == "steal taser from her" goto takeWeapon_fromRachel
if "%input%" == "grab taser from her" goto takeWeapon_fromRachel
if "%input%" == "open fridge" goto interactRefrigerator
if "%input%" == "look inside fridge" goto interactRefrigerator
if "%input%" == "look in fridge" goto interactRefrigerator
if "%input%" == "open up fridge" goto interactRefrigerator
if "%input%" == "open fridge up" goto interactRefrigerator
if "%input%" == "check inside fridge" goto interactRefrigerator
if "%input%" == "check in fridge" goto interactRefrigerator
if "%input%" == "look inside of fridge" goto interactRefrigerator
if "%input%" == "check inside of fridge" goto interactRefrigerator
if "%input%" == "open refrigerator" goto interactRefrigerator
if "%input%" == "look inside refrigerator" goto interactRefrigerator
if "%input%" == "look in refrigerator" goto interactRefrigerator
if "%input%" == "open up refrigerator" goto interactRefrigerator
if "%input%" == "open refrigerator up" goto interactRefrigerator
if "%input%" == "check inside refrigerator" goto interactRefrigerator
if "%input%" == "check in refrigerator" goto interactRefrigerator
if "%input%" == "look inside of refrigerator" goto interactRefrigerator
if "%input%" == "check inside of refrigerator" goto interactRefrigerator
if "%input%" == "rachel" goto examine_Rachel
if "%input%" == "examine rachel" goto examine_Rachel
if "%input%" == "look at rachel" goto examine_Rachel
if "%input%" == "check out rachel" goto examine_Rachel
if "%input%" == "check rachel out" goto examine_Rachel
if "%input%" == "look rachel" goto examine_Rachel
if "%input%" == "examine her" goto examine_Rachel
if "%input%" == "look at her" goto examine_Rachel
if "%input%" == "look her" goto examine_Rachel
if "%input%" == "check her out" goto examine_Rachel
if "%input%" == "wait 30 min" goto wait30Min
if "%input%" == "wait 30 minutes" goto wait30Min
if "%input%" == "wait for 30 min" goto wait30Min
if "%input%" == "wait for 30 minutes" goto wait30Min
if "%input%" == "finger it" goto putFingerInHole
if "%input%" == "put finger in it" goto putFingerInHole
if "%input%" == "stick finger in it" goto putFingerInHole
if "%input%" == "place finger in it" goto putFingerInHole
if "%input%" == "put pointer finger in it" goto putFingerInHole
if "%input%" == "stick pointer finger in it" goto putFingerInHole
if "%input%" == "place pointer finger in it" goto putFingerInHole
if "%input%" == "put index finger in it" goto putFingerInHole
if "%input%" == "stick index finger in it" goto putFingerInHole
if "%input%" == "place index finger in it" goto putFingerInHole
if "%input%" == "put middle finger in it" goto putFingerInHole
if "%input%" == "stick middle finger in it" goto putFingerInHole
if "%input%" == "place middle finger in it" goto putFingerInHole
if "%input%" == "put pinky in it" goto putFingerInHole
if "%input%" == "stick pinky in it" goto putFingerInHole
if "%input%" == "place pinky in it" goto putFingerInHole
if "%input%" == "put thumb in it" goto putFingerInHole
if "%input%" == "stick thumb in it" goto putFingerInHole
if "%input%" == "place thumb in it" goto putFingerInHole
if "%input%" == "finger hole" goto putFingerInHole
if "%input%" == "put finger in hole" goto putFingerInHole
if "%input%" == "stick finger in hole" goto putFingerInHole
if "%input%" == "place finger in hole" goto putFingerInHole
if "%input%" == "put pointer finger in hole" goto putFingerInHole
if "%input%" == "stick pointer finger in hole" goto putFingerInHole
if "%input%" == "place pointer finger in hole" goto putFingerInHole
if "%input%" == "put index finger in hole" goto putFingerInHole
if "%input%" == "stick index finger in hole" goto putFingerInHole
if "%input%" == "place index finger in hole" goto putFingerInHole
if "%input%" == "put middle finger in hole" goto putFingerInHole
if "%input%" == "stick middle finger in hole" goto putFingerInHole
if "%input%" == "place middle finger in hole" goto putFingerInHole
if "%input%" == "put pinky in hole" goto putFingerInHole
if "%input%" == "stick pinky in hole" goto putFingerInHole
if "%input%" == "place pinky in hole" goto putFingerInHole
if "%input%" == "put thumb in hole" goto putFingerInHole
if "%input%" == "stick thumb in hole" goto putFingerInHole
if "%input%" == "place thumb in hole" goto putFingerInHole
if "%input%" == "finger interface" goto putFingerInHole
if "%input%" == "put finger in interface" goto putFingerInHole
if "%input%" == "stick finger in interface" goto putFingerInHole
if "%input%" == "place finger in interface" goto putFingerInHole
if "%input%" == "put pointer finger in interface" goto putFingerInHole
if "%input%" == "stick pointer finger in interface" goto putFingerInHole
if "%input%" == "place pointer finger in interface" goto putFingerInHole
if "%input%" == "put index finger in interface" goto putFingerInHole
if "%input%" == "stick index finger in interface" goto putFingerInHole
if "%input%" == "place index finger in interface" goto putFingerInHole
if "%input%" == "put middle finger in interface" goto putFingerInHole
if "%input%" == "stick middle finger in interface" goto putFingerInHole
if "%input%" == "place middle finger in interface" goto putFingerInHole
if "%input%" == "put pinky in interface" goto putFingerInHole
if "%input%" == "stick pinky in interface" goto putFingerInHole
if "%input%" == "place pinky in interface" goto putFingerInHole
if "%input%" == "put thumb in interface" goto putFingerInHole
if "%input%" == "stick thumb in interface" goto putFingerInHole
if "%input%" == "place thumb in interface" goto putFingerInHole
if "%input%" == "finger hole in interface" goto putFingerInHole
if "%input%" == "put finger in hole in interface" goto putFingerInHole
if "%input%" == "stick finger in hole in interface" goto putFingerInHole
if "%input%" == "place finger in hole in interface" goto putFingerInHole
if "%input%" == "put pointer finger in hole in interface" goto putFingerInHole
if "%input%" == "stick pointer finger in hole in interface" goto putFingerInHole
if "%input%" == "place pointer finger in hole in interface" goto putFingerInHole
if "%input%" == "put index finger in hole in interface" goto putFingerInHole
if "%input%" == "stick index finger in hole in interface" goto putFingerInHole
if "%input%" == "place index finger in hole in interface" goto putFingerInHole
if "%input%" == "put middle finger in hole in interface" goto putFingerInHole
if "%input%" == "stick middle finger in hole in interface" goto putFingerInHole
if "%input%" == "place middle finger in hole in interface" goto putFingerInHole
if "%input%" == "put pinky in hole in interface" goto putFingerInHole
if "%input%" == "stick pinky in hole in interface" goto putFingerInHole
if "%input%" == "place pinky in hole in interface" goto putFingerInHole
if "%input%" == "put thumb in hole in interface" goto putFingerInHole
if "%input%" == "stick thumb in hole in interface" goto putFingerInHole
if "%input%" == "place thumb in hole in interface" goto putFingerInHole
if "%input%" == "finger interface hole" goto putFingerInHole
if "%input%" == "put finger in interface hole" goto putFingerInHole
if "%input%" == "stick finger in interface hole" goto putFingerInHole
if "%input%" == "place finger in interface hole" goto putFingerInHole
if "%input%" == "put pointer finger in interface hole" goto putFingerInHole
if "%input%" == "stick pointer finger in interface hole" goto putFingerInHole
if "%input%" == "place pointer finger in interface hole" goto putFingerInHole
if "%input%" == "put index finger in interface hole" goto putFingerInHole
if "%input%" == "stick index finger in interface hole" goto putFingerInHole
if "%input%" == "place index finger in interface hole" goto putFingerInHole
if "%input%" == "put middle finger in interface hole" goto putFingerInHole
if "%input%" == "stick middle finger in interface hole" goto putFingerInHole
if "%input%" == "place middle finger in interface hole" goto putFingerInHole
if "%input%" == "put pinky in interface hole" goto putFingerInHole
if "%input%" == "stick pinky in interface hole" goto putFingerInHole
if "%input%" == "place pinky in interface hole" goto putFingerInHole
if "%input%" == "put thumb in interface hole" goto putFingerInHole
if "%input%" == "stick thumb in interface hole" goto putFingerInHole
if "%input%" == "place thumb in interface hole" goto putFingerInHole
if "%input%" == "finger foreign interface" goto putFingerInHole
if "%input%" == "put finger in foreign interface" goto putFingerInHole
if "%input%" == "stick finger in foreign interface" goto putFingerInHole
if "%input%" == "place finger in foreign interface" goto putFingerInHole
if "%input%" == "put pointer finger in foreign interface" goto putFingerInHole
if "%input%" == "stick pointer finger in foreign interface" goto putFingerInHole
if "%input%" == "place pointer finger in foreign interface" goto putFingerInHole
if "%input%" == "put index finger in foreign interface" goto putFingerInHole
if "%input%" == "stick index finger in foreign interface" goto putFingerInHole
if "%input%" == "place index finger in foreign interface" goto putFingerInHole
if "%input%" == "put middle finger in foreign interface" goto putFingerInHole
if "%input%" == "stick middle finger in foreign interface" goto putFingerInHole
if "%input%" == "place middle finger in foreign interface" goto putFingerInHole
if "%input%" == "put pinky in foreign interface" goto putFingerInHole
if "%input%" == "stick pinky in foreign interface" goto putFingerInHole
if "%input%" == "place pinky in foreign interface" goto putFingerInHole
if "%input%" == "put thumb in foreign interface" goto putFingerInHole
if "%input%" == "stick thumb in foreign interface" goto putFingerInHole
if "%input%" == "place thumb in foreign interface" goto putFingerInHole
if "%input%" == "finger box" goto putFingerInHole
if "%input%" == "put finger in box" goto putFingerInHole
if "%input%" == "stick finger in box" goto putFingerInHole
if "%input%" == "place finger in box" goto putFingerInHole
if "%input%" == "put pointer finger in box" goto putFingerInHole
if "%input%" == "stick pointer finger in box" goto putFingerInHole
if "%input%" == "place pointer finger in box" goto putFingerInHole
if "%input%" == "put index finger in box" goto putFingerInHole
if "%input%" == "stick index finger in box" goto putFingerInHole
if "%input%" == "place index finger in box" goto putFingerInHole
if "%input%" == "put middle finger in box" goto putFingerInHole
if "%input%" == "stick middle finger in box" goto putFingerInHole
if "%input%" == "place middle finger in box" goto putFingerInHole
if "%input%" == "put pinky in box" goto putFingerInHole
if "%input%" == "stick pinky in box" goto putFingerInHole
if "%input%" == "place pinky in box" goto putFingerInHole
if "%input%" == "put thumb in box" goto putFingerInHole
if "%input%" == "stick thumb in box" goto putFingerInHole
if "%input%" == "place thumb in box" goto putFingerInHole
if "%input%" == "finger device" goto putFingerInHole
if "%input%" == "put finger in device" goto putFingerInHole
if "%input%" == "stick finger in device" goto putFingerInHole
if "%input%" == "place finger in device" goto putFingerInHole
if "%input%" == "put pointer finger in device" goto putFingerInHole
if "%input%" == "stick pointer finger in device" goto putFingerInHole
if "%input%" == "place pointer finger in device" goto putFingerInHole
if "%input%" == "put index finger in device" goto putFingerInHole
if "%input%" == "stick index finger in device" goto putFingerInHole
if "%input%" == "place index finger in device" goto putFingerInHole
if "%input%" == "put middle finger in device" goto putFingerInHole
if "%input%" == "stick middle finger in device" goto putFingerInHole
if "%input%" == "place middle finger in device" goto putFingerInHole
if "%input%" == "put pinky in device" goto putFingerInHole
if "%input%" == "stick pinky in device" goto putFingerInHole
if "%input%" == "place pinky in device" goto putFingerInHole
if "%input%" == "put thumb in device" goto putFingerInHole
if "%input%" == "stick thumb in device" goto putFingerInHole
if "%input%" == "place thumb in device" goto putFingerInHole
if "%input%" == "finger panel" goto putFingerInHole
if "%input%" == "put finger in panel" goto putFingerInHole
if "%input%" == "stick finger in panel" goto putFingerInHole
if "%input%" == "place finger in panel" goto putFingerInHole
if "%input%" == "put pointer finger in panel" goto putFingerInHole
if "%input%" == "stick pointer finger in panel" goto putFingerInHole
if "%input%" == "place pointer finger in panel" goto putFingerInHole
if "%input%" == "put index finger in panel" goto putFingerInHole
if "%input%" == "stick index finger in panel" goto putFingerInHole
if "%input%" == "place index finger in panel" goto putFingerInHole
if "%input%" == "put middle finger in panel" goto putFingerInHole
if "%input%" == "stick middle finger in panel" goto putFingerInHole
if "%input%" == "place middle finger in panel" goto putFingerInHole
if "%input%" == "put pinky in panel" goto putFingerInHole
if "%input%" == "stick pinky in panel" goto putFingerInHole
if "%input%" == "place pinky in panel" goto putFingerInHole
if "%input%" == "put thumb in panel" goto putFingerInHole
if "%input%" == "stick thumb in panel" goto putFingerInHole
if "%input%" == "place thumb in panel" goto putFingerInHole
if "%input%" == "finger box's hole" goto putFingerInHole
if "%input%" == "put finger in box's hole" goto putFingerInHole
if "%input%" == "stick finger in box's hole" goto putFingerInHole
if "%input%" == "place finger in box's hole" goto putFingerInHole
if "%input%" == "put pointer finger in box's hole" goto putFingerInHole
if "%input%" == "stick pointer finger in box's hole" goto putFingerInHole
if "%input%" == "place pointer finger in box's hole" goto putFingerInHole
if "%input%" == "put index finger in box's hole" goto putFingerInHole
if "%input%" == "stick index finger in box's hole" goto putFingerInHole
if "%input%" == "place index finger in box's hole" goto putFingerInHole
if "%input%" == "put middle finger in box's hole" goto putFingerInHole
if "%input%" == "stick middle finger in box's hole" goto putFingerInHole
if "%input%" == "place middle finger in box's hole" goto putFingerInHole
if "%input%" == "put pinky in box's hole" goto putFingerInHole
if "%input%" == "stick pinky in box's hole" goto putFingerInHole
if "%input%" == "place pinky in box's hole" goto putFingerInHole
if "%input%" == "put thumb in box's hole" goto putFingerInHole
if "%input%" == "stick thumb in box's hole" goto putFingerInHole
if "%input%" == "place thumb in box's hole" goto putFingerInHole
if "%input%" == "finger device's hole" goto putFingerInHole
if "%input%" == "put finger in device's hole" goto putFingerInHole
if "%input%" == "stick finger in device's hole" goto putFingerInHole
if "%input%" == "place finger in device's hole" goto putFingerInHole
if "%input%" == "put pointer finger in device's hole" goto putFingerInHole
if "%input%" == "stick pointer finger in device's hole" goto putFingerInHole
if "%input%" == "place pointer finger in device's hole" goto putFingerInHole
if "%input%" == "put index finger in device's hole" goto putFingerInHole
if "%input%" == "stick index finger in device's hole" goto putFingerInHole
if "%input%" == "place index finger in device's hole" goto putFingerInHole
if "%input%" == "put middle finger in device's hole" goto putFingerInHole
if "%input%" == "stick middle finger in device's hole" goto putFingerInHole
if "%input%" == "place middle finger in device's hole" goto putFingerInHole
if "%input%" == "put pinky in device's hole" goto putFingerInHole
if "%input%" == "stick pinky in device's hole" goto putFingerInHole
if "%input%" == "place pinky in device's hole" goto putFingerInHole
if "%input%" == "put thumb in device's hole" goto putFingerInHole
if "%input%" == "stick thumb in device's hole" goto putFingerInHole
if "%input%" == "place thumb in device's hole" goto putFingerInHole
if "%input%" == "finger panel's hole" goto putFingerInHole
if "%input%" == "put finger in panel's hole" goto putFingerInHole
if "%input%" == "stick finger in panel's hole" goto putFingerInHole
if "%input%" == "place finger in panel's hole" goto putFingerInHole
if "%input%" == "put pointer finger in panel's hole" goto putFingerInHole
if "%input%" == "stick pointer finger in panel's hole" goto putFingerInHole
if "%input%" == "place pointer finger in panel's hole" goto putFingerInHole
if "%input%" == "put index finger in panel's hole" goto putFingerInHole
if "%input%" == "stick index finger in panel's hole" goto putFingerInHole
if "%input%" == "place index finger in panel's hole" goto putFingerInHole
if "%input%" == "put middle finger in panel's hole" goto putFingerInHole
if "%input%" == "stick middle finger in panel's hole" goto putFingerInHole
if "%input%" == "place middle finger in panel's hole" goto putFingerInHole
if "%input%" == "put pinky in panel's hole" goto putFingerInHole
if "%input%" == "stick pinky in panel's hole" goto putFingerInHole
if "%input%" == "place pinky in panel's hole" goto putFingerInHole
if "%input%" == "put thumb in panel's hole" goto putFingerInHole
if "%input%" == "stick thumb in panel's hole" goto putFingerInHole
if "%input%" == "place thumb in panel's hole" goto putFingerInHole
if "%input%" == "finger boxs hole" goto putFingerInHole
if "%input%" == "put finger in boxs hole" goto putFingerInHole
if "%input%" == "stick finger in boxs hole" goto putFingerInHole
if "%input%" == "place finger in boxs hole" goto putFingerInHole
if "%input%" == "put pointer finger in boxs hole" goto putFingerInHole
if "%input%" == "stick pointer finger in boxs hole" goto putFingerInHole
if "%input%" == "place pointer finger in boxs hole" goto putFingerInHole
if "%input%" == "put index finger in boxs hole" goto putFingerInHole
if "%input%" == "stick index finger in boxs hole" goto putFingerInHole
if "%input%" == "place index finger in boxs hole" goto putFingerInHole
if "%input%" == "put middle finger in boxs hole" goto putFingerInHole
if "%input%" == "stick middle finger in boxs hole" goto putFingerInHole
if "%input%" == "place middle finger in boxs hole" goto putFingerInHole
if "%input%" == "put pinky in boxs hole" goto putFingerInHole
if "%input%" == "stick pinky in boxs hole" goto putFingerInHole
if "%input%" == "place pinky in boxs hole" goto putFingerInHole
if "%input%" == "put thumb in boxs hole" goto putFingerInHole
if "%input%" == "stick thumb in boxs hole" goto putFingerInHole
if "%input%" == "place thumb in boxs hole" goto putFingerInHole
if "%input%" == "finger devices hole" goto putFingerInHole
if "%input%" == "put finger in devices hole" goto putFingerInHole
if "%input%" == "stick finger in devices hole" goto putFingerInHole
if "%input%" == "place finger in devices hole" goto putFingerInHole
if "%input%" == "put pointer finger in devices hole" goto putFingerInHole
if "%input%" == "stick pointer finger in devices hole" goto putFingerInHole
if "%input%" == "place pointer finger in devices hole" goto putFingerInHole
if "%input%" == "put index finger in devices hole" goto putFingerInHole
if "%input%" == "stick index finger in devices hole" goto putFingerInHole
if "%input%" == "place index finger in devices hole" goto putFingerInHole
if "%input%" == "put middle finger in devices hole" goto putFingerInHole
if "%input%" == "stick middle finger in devices hole" goto putFingerInHole
if "%input%" == "place middle finger in devices hole" goto putFingerInHole
if "%input%" == "put pinky in devices hole" goto putFingerInHole
if "%input%" == "stick pinky in devices hole" goto putFingerInHole
if "%input%" == "place pinky in devices hole" goto putFingerInHole
if "%input%" == "put thumb in devices hole" goto putFingerInHole
if "%input%" == "stick thumb in devices hole" goto putFingerInHole
if "%input%" == "place thumb in devices hole" goto putFingerInHole
if "%input%" == "finger panels hole" goto putFingerInHole
if "%input%" == "put finger in panels hole" goto putFingerInHole
if "%input%" == "stick finger in panels hole" goto putFingerInHole
if "%input%" == "place finger in panels hole" goto putFingerInHole
if "%input%" == "put pointer finger in panels hole" goto putFingerInHole
if "%input%" == "stick pointer finger in panels hole" goto putFingerInHole
if "%input%" == "place pointer finger in panels hole" goto putFingerInHole
if "%input%" == "put index finger in panels hole" goto putFingerInHole
if "%input%" == "stick index finger in panels hole" goto putFingerInHole
if "%input%" == "place index finger in panels hole" goto putFingerInHole
if "%input%" == "put middle finger in panels hole" goto putFingerInHole
if "%input%" == "stick middle finger in panels hole" goto putFingerInHole
if "%input%" == "place middle finger in panels hole" goto putFingerInHole
if "%input%" == "put pinky in panels hole" goto putFingerInHole
if "%input%" == "stick pinky in panels hole" goto putFingerInHole
if "%input%" == "place pinky in panels hole" goto putFingerInHole
if "%input%" == "put thumb in panels hole" goto putFingerInHole
if "%input%" == "stick thumb in panels hole" goto putFingerInHole
if "%input%" == "place thumb in panels hole" goto putFingerInHole
if "%input%" == "finger hole in box" goto putFingerInHole
if "%input%" == "put finger in hole in box" goto putFingerInHole
if "%input%" == "stick finger in hole in box" goto putFingerInHole
if "%input%" == "place finger in hole in box" goto putFingerInHole
if "%input%" == "put pointer finger in hole in box" goto putFingerInHole
if "%input%" == "stick pointer finger in hole in box" goto putFingerInHole
if "%input%" == "place pointer finger in hole in box" goto putFingerInHole
if "%input%" == "put index finger in hole in box" goto putFingerInHole
if "%input%" == "stick index finger in hole in box" goto putFingerInHole
if "%input%" == "place index finger in hole in box" goto putFingerInHole
if "%input%" == "put middle finger in hole in box" goto putFingerInHole
if "%input%" == "stick middle finger in hole in box" goto putFingerInHole
if "%input%" == "place middle finger in hole in box" goto putFingerInHole
if "%input%" == "put pinky in hole in box" goto putFingerInHole
if "%input%" == "stick pinky in hole in box" goto putFingerInHole
if "%input%" == "place pinky in hole in box" goto putFingerInHole
if "%input%" == "put thumb in hole in box" goto putFingerInHole
if "%input%" == "stick thumb in hole in box" goto putFingerInHole
if "%input%" == "place thumb in hole in box" goto putFingerInHole
if "%input%" == "finger hole in device" goto putFingerInHole
if "%input%" == "put finger in hole in device" goto putFingerInHole
if "%input%" == "stick finger in hole in device" goto putFingerInHole
if "%input%" == "place finger in hole in device" goto putFingerInHole
if "%input%" == "put pointer finger in hole in device" goto putFingerInHole
if "%input%" == "stick pointer finger in hole in device" goto putFingerInHole
if "%input%" == "place pointer finger in hole in device" goto putFingerInHole
if "%input%" == "put index finger in hole in device" goto putFingerInHole
if "%input%" == "stick index finger in hole in device" goto putFingerInHole
if "%input%" == "place index finger in hole in device" goto putFingerInHole
if "%input%" == "put middle finger in hole in device" goto putFingerInHole
if "%input%" == "stick middle finger in hole in device" goto putFingerInHole
if "%input%" == "place middle finger in hole in device" goto putFingerInHole
if "%input%" == "put pinky in hole in device" goto putFingerInHole
if "%input%" == "stick pinky in hole in device" goto putFingerInHole
if "%input%" == "place pinky in hole in device" goto putFingerInHole
if "%input%" == "put thumb in hole in device" goto putFingerInHole
if "%input%" == "stick thumb in hole in device" goto putFingerInHole
if "%input%" == "place thumb in hole in device" goto putFingerInHole
if "%input%" == "finger hole in panel" goto putFingerInHole
if "%input%" == "put finger in hole in panel" goto putFingerInHole
if "%input%" == "stick finger in hole in panel" goto putFingerInHole
if "%input%" == "place finger in hole in panel" goto putFingerInHole
if "%input%" == "put pointer finger in hole in panel" goto putFingerInHole
if "%input%" == "stick pointer finger in hole in panel" goto putFingerInHole
if "%input%" == "place pointer finger in hole in panel" goto putFingerInHole
if "%input%" == "put index finger in hole in panel" goto putFingerInHole
if "%input%" == "stick index finger in hole in panel" goto putFingerInHole
if "%input%" == "place index finger in hole in panel" goto putFingerInHole
if "%input%" == "put middle finger in hole in panel" goto putFingerInHole
if "%input%" == "stick middle finger in hole in panel" goto putFingerInHole
if "%input%" == "place middle finger in hole in panel" goto putFingerInHole
if "%input%" == "put pinky in hole in panel" goto putFingerInHole
if "%input%" == "stick pinky in hole in panel" goto putFingerInHole
if "%input%" == "place pinky in hole in panel" goto putFingerInHole
if "%input%" == "put thumb in hole in panel" goto putFingerInHole
if "%input%" == "stick thumb in hole in panel" goto putFingerInHole
if "%input%" == "place thumb in hole in panel" goto putFingerInHole
if "%input%" == "finger metal box" goto putFingerInHole
if "%input%" == "put finger in metal box" goto putFingerInHole
if "%input%" == "stick finger in metal box" goto putFingerInHole
if "%input%" == "place finger in metal box" goto putFingerInHole
if "%input%" == "put pointer finger in metal box" goto putFingerInHole
if "%input%" == "stick pointer finger in metal box" goto putFingerInHole
if "%input%" == "place pointer finger in metal box" goto putFingerInHole
if "%input%" == "put index finger in metal box" goto putFingerInHole
if "%input%" == "stick index finger in metal box" goto putFingerInHole
if "%input%" == "place index finger in metal box" goto putFingerInHole
if "%input%" == "put middle finger in metal box" goto putFingerInHole
if "%input%" == "stick middle finger in metal box" goto putFingerInHole
if "%input%" == "place middle finger in metal box" goto putFingerInHole
if "%input%" == "put pinky in metal box" goto putFingerInHole
if "%input%" == "stick pinky in metal box" goto putFingerInHole
if "%input%" == "place pinky in metal box" goto putFingerInHole
if "%input%" == "put thumb in metal box" goto putFingerInHole
if "%input%" == "stick thumb in metal box" goto putFingerInHole
if "%input%" == "place thumb in metal box" goto putFingerInHole
if "%input%" == "finger metal device" goto putFingerInHole
if "%input%" == "put finger in metal device" goto putFingerInHole
if "%input%" == "stick finger in metal device" goto putFingerInHole
if "%input%" == "place finger in metal device" goto putFingerInHole
if "%input%" == "put pointer finger in metal device" goto putFingerInHole
if "%input%" == "stick pointer finger in metal device" goto putFingerInHole
if "%input%" == "place pointer finger in metal device" goto putFingerInHole
if "%input%" == "put index finger in metal device" goto putFingerInHole
if "%input%" == "stick index finger in metal device" goto putFingerInHole
if "%input%" == "place index finger in metal device" goto putFingerInHole
if "%input%" == "put middle finger in metal device" goto putFingerInHole
if "%input%" == "stick middle finger in metal device" goto putFingerInHole
if "%input%" == "place middle finger in metal device" goto putFingerInHole
if "%input%" == "put pinky in metal device" goto putFingerInHole
if "%input%" == "stick pinky in metal device" goto putFingerInHole
if "%input%" == "place pinky in metal device" goto putFingerInHole
if "%input%" == "put thumb in metal device" goto putFingerInHole
if "%input%" == "stick thumb in metal device" goto putFingerInHole
if "%input%" == "place thumb in metal device" goto putFingerInHole
if "%input%" == "finger metal panel" goto putFingerInHole
if "%input%" == "put finger in metal panel" goto putFingerInHole
if "%input%" == "stick finger in metal panel" goto putFingerInHole
if "%input%" == "place finger in metal panel" goto putFingerInHole
if "%input%" == "put pointer finger in metal panel" goto putFingerInHole
if "%input%" == "stick pointer finger in metal panel" goto putFingerInHole
if "%input%" == "place pointer finger in metal panel" goto putFingerInHole
if "%input%" == "put index finger in metal panel" goto putFingerInHole
if "%input%" == "stick index finger in metal panel" goto putFingerInHole
if "%input%" == "place index finger in metal panel" goto putFingerInHole
if "%input%" == "put middle finger in metal panel" goto putFingerInHole
if "%input%" == "stick middle finger in metal panel" goto putFingerInHole
if "%input%" == "place middle finger in metal panel" goto putFingerInHole
if "%input%" == "put pinky in metal panel" goto putFingerInHole
if "%input%" == "stick pinky in metal panel" goto putFingerInHole
if "%input%" == "place pinky in metal panel" goto putFingerInHole
if "%input%" == "put thumb in metal panel" goto putFingerInHole
if "%input%" == "stick thumb in metal panel" goto putFingerInHole
if "%input%" == "place thumb in metal panel" goto putFingerInHole
if "%input%" == "finger thin metal panel" goto putFingerInHole
if "%input%" == "put finger in thin metal panel" goto putFingerInHole
if "%input%" == "stick finger in thin metal panel" goto putFingerInHole
if "%input%" == "place finger in thin metal panel" goto putFingerInHole
if "%input%" == "put pointer finger in thin metal panel" goto putFingerInHole
if "%input%" == "stick pointer finger in thin metal panel" goto putFingerInHole
if "%input%" == "place pointer finger in thin metal panel" goto putFingerInHole
if "%input%" == "put index finger in thin metal panel" goto putFingerInHole
if "%input%" == "stick index finger in thin metal panel" goto putFingerInHole
if "%input%" == "place index finger in thin metal panel" goto putFingerInHole
if "%input%" == "put middle finger in thin metal panel" goto putFingerInHole
if "%input%" == "stick middle finger in thin metal panel" goto putFingerInHole
if "%input%" == "place middle finger in thin metal panel" goto putFingerInHole
if "%input%" == "put pinky in thin metal panel" goto putFingerInHole
if "%input%" == "stick pinky in thin metal panel" goto putFingerInHole
if "%input%" == "place pinky in thin metal panel" goto putFingerInHole
if "%input%" == "put thumb in thin metal panel" goto putFingerInHole
if "%input%" == "stick thumb in thin metal panel" goto putFingerInHole
if "%input%" == "place thumb in thin metal panel" goto putFingerInHole
if "%input%" == "fuck it" goto putPenisInHole
if "%input%" == "put penis in it" goto putPenisInHole
if "%input%" == "stick penis in it" goto putPenisInHole
if "%input%" == "place penis in it" goto putPenisInHole
if "%input%" == "put dick in it" goto putPenisInHole
if "%input%" == "stick dick in it" goto putPenisInHole
if "%input%" == "place dick in it" goto putPenisInHole
if "%input%" == "put cock in it" goto putPenisInHole
if "%input%" == "stick cock in it" goto putPenisInHole
if "%input%" == "place cock in it" goto putPenisInHole
if "%input%" == "fuck hole" goto putPenisInHole
if "%input%" == "put penis in hole" goto putPenisInHole
if "%input%" == "stick penis in hole" goto putPenisInHole
if "%input%" == "place penis in hole" goto putPenisInHole
if "%input%" == "put dick in hole" goto putPenisInHole
if "%input%" == "stick dick in hole" goto putPenisInHole
if "%input%" == "place dick in hole" goto putPenisInHole
if "%input%" == "put cock in hole" goto putPenisInHole
if "%input%" == "stick cock in hole" goto putPenisInHole
if "%input%" == "place cock in hole" goto putPenisInHole
if "%input%" == "fuck device" goto putPenisInHole
if "%input%" == "put penis in device" goto putPenisInHole
if "%input%" == "stick penis in device" goto putPenisInHole
if "%input%" == "place penis in device" goto putPenisInHole
if "%input%" == "put dick in device" goto putPenisInHole
if "%input%" == "stick dick in device" goto putPenisInHole
if "%input%" == "place dick in device" goto putPenisInHole
if "%input%" == "put cock in device" goto putPenisInHole
if "%input%" == "stick cock in device" goto putPenisInHole
if "%input%" == "place cock in device" goto putPenisInHole
if "%input%" == "talk them" goto talkToParents
if "%input%" == "talk to them" goto talkToParents
if "%input%" == "say hi to them" goto talkToParents
if "%input%" == "talk rachels parents" goto talkToParents
if "%input%" == "talk to rachels parents" goto talkToParents
if "%input%" == "say hi to rachels parents" goto talkToParents
if "%input%" == "talk rachel's parents" goto talkToParents
if "%input%" == "talk to rachel's parents" goto talkToParents
if "%input%" == "say hi to rachel's parents" goto talkToParents
if "%input%" == "talk parents" goto talkToParents
if "%input%" == "talk to parents" goto talkToParents
if "%input%" == "say hi to parents" goto talkToParents
if "%input%" == "talk her parents" goto talkToParents
if "%input%" == "talk to her parents" goto talkToParents
if "%input%" == "say hi to her parents" goto talkToParents
if "%input%" == "talk mr and mrs wheeler" goto talkToParents
if "%input%" == "talk to mr and mrs wheeler" goto talkToParents
if "%input%" == "say hi to mr and mrs wheeler" goto talkToParents
if "%input%" == "talk mr. and mrs. wheeler" goto talkToParents
if "%input%" == "talk to mr. and mrs. wheeler" goto talkToParents
if "%input%" == "say hi to mr. and mrs. wheeler" goto talkToParents
if "%input%" == "talk mr. and ms. wheeler" goto talkToParents
if "%input%" == "talk to mr. and ms. wheeler" goto talkToParents
if "%input%" == "say hi to mr. and ms. wheeler" goto talkToParents
if "%input%" == "talk mr and ms wheeler" goto talkToParents
if "%input%" == "talk to mr and ms wheeler" goto talkToParents
if "%input%" == "say hi to mr and ms wheeler" goto talkToParents
if "%input%" == "talk mom and dad" goto talkToParents
if "%input%" == "talk to mom and dad" goto talkToParents
if "%input%" == "say hi to mom and dad" goto talkToParents
if "%input%" == "talk dad and mom" goto talkToParents
if "%input%" == "talk to dad and mom" goto talkToParents
if "%input%" == "say hi to dad and mom" goto talkToParents
if "%input%" == "talk rachels mom and dad" goto talkToParents
if "%input%" == "talk to rachels mom and dad" goto talkToParents
if "%input%" == "say hi to rachels mom and dad" goto talkToParents
if "%input%" == "talk rachels dad and mom" goto talkToParents
if "%input%" == "talk to rachels dad and mom" goto talkToParents
if "%input%" == "say hi to rachels dad and mom" goto talkToParents
if "%input%" == "talk rachel's mom and dad" goto talkToParents
if "%input%" == "talk to rachel's mom and dad" goto talkToParents
if "%input%" == "say hi to rachel's mom and dad" goto talkToParents
if "%input%" == "talk rachel's dad and mom" goto talkToParents
if "%input%" == "talk to rachel's dad and mom" goto talkToParents
if "%input%" == "say hi to rachel's dad and mom" goto talkToParents
if "%input%" == "talk him" goto talkToDad
if "%input%" == "talk to him" goto talkToDad
if "%input%" == "say hi to him" goto 
if "%input%" == "talk dad" goto talkToDad
if "%input%" == "talk to dad" goto talkToDad
if "%input%" == "say hi to dad" goto talkToDad
if "%input%" == "talk father" goto talkToDad
if "%input%" == "talk to father" goto talkToDad
if "%input%" == "say hi to father" goto talkToDad
if "%input%" == "talk her dad" goto talkToDad
if "%input%" == "talk to her dad" goto talkToDad
if "%input%" == "say hi to her dad" goto talkToDad
if "%input%" == "talk her father" goto talkToDad
if "%input%" == "talk to her father" goto talkToDad
if "%input%" == "say hi to her father" goto talkToDad
if "%input%" == "talk rachel's dad" goto talkToDad
if "%input%" == "talk to rachel's dad" goto talkToDad
if "%input%" == "say hi to rachel's dad" goto talkToDad
if "%input%" == "talk rachel's father" goto talkToDad
if "%input%" == "talk to rachel's father" goto talkToDad
if "%input%" == "say hi to rachel's father" goto talkToDad
if "%input%" == "talk mr. wheeler" goto talkToDad
if "%input%" == "talk to mr. wheeler" goto talkToDad
if "%input%" == "say hi to mr. wheeler" goto talkToDad
if "%input%" == "talk mr wheeler" goto talkToDad
if "%input%" == "talk to mr wheeler" goto talkToDad
if "%input%" == "say hi to mr wheeler" goto talkToDad
if "%input%" == "talk her mom" goto talkToMom
if "%input%" == "talk to her mom" goto talkToMom
if "%input%" == "say hi to her mom" goto talkToMom
if "%input%" == "talk her mother" goto talkToMom
if "%input%" == "talk to her mother" goto talkToMom
if "%input%" == "say hi to her mother" goto talkToMom
if "%input%" == "talk mom" goto talkToMom
if "%input%" == "talk to mom" goto talkToMom
if "%input%" == "say hi to mom" goto talkToMom
if "%input%" == "talk mother" goto talkToMom
if "%input%" == "talk to mother" goto talkToMom
if "%input%" == "say hi to mother" goto talkToMom
if "%input%" == "talk rachel's mom" goto talkToMom
if "%input%" == "talk to rachel's mom" goto talkToMom
if "%input%" == "say hi to rachel's mom" goto talkToMom
if "%input%" == "talk rachels mom" goto talkToMom
if "%input%" == "talk to rachels mom" goto talkToMom
if "%input%" == "say hi to rachels mom" goto talkToMom
if "%input%" == "talk rachel's mother" goto talkToMom
if "%input%" == "talk to rachel's mother" goto talkToMom
if "%input%" == "say hi to rachel's mother" goto talkToMom
if "%input%" == "talk rachels mother" goto talkToMom
if "%input%" == "talk to rachels mother" goto talkToMom
if "%input%" == "say hi to rachels mother" goto talkToMom
if "%input%" == "talk mrs. wheeler" goto talkToMom
if "%input%" == "talk to mrs. wheeler" goto talkToMom
if "%input%" == "say hi to mrs. wheeler" goto talkToMom
if "%input%" == "talk mrs wheeler" goto talkToMom
if "%input%" == "talk to mrs wheeler" goto talkToMom
if "%input%" == "say hi to mrs wheeler" goto talkToMom
if "%input%" == "talk ms wheeler" goto talkToMom
if "%input%" == "talk to ms wheeler" goto talkToMom
if "%input%" == "say hi to ms wheeler" goto talkToMom
if "%input%" == "talk ms. wheeler" goto talkToMom
if "%input%" == "talk to ms. wheeler" goto talkToMom
if "%input%" == "say hi to ms. wheeler" goto talkToMom
if "%input%" == "examine him" goto examine_Dad
if "%input%" == "look him" goto examine_Dad
if "%input%" == "look at him" goto examine_Dad
if "%input%" == "him" goto examine_Dad
if "%input%" == "examine rachel's dad" goto examine_Dad
if "%input%" == "look rachel's dad" goto examine_Dad
if "%input%" == "look at rachel's dad" goto examine_Dad
if "%input%" == "rachel's dad" goto examine_Dad
if "%input%" == "examine rachel's father" goto examine_Dad
if "%input%" == "look rachel's father" goto examine_Dad
if "%input%" == "look at rachel's father" goto examine_Dad
if "%input%" == "rachel's father" goto examine_Dad
if "%input%" == "examine rachels dad" goto examine_Dad
if "%input%" == "look rachels dad" goto examine_Dad
if "%input%" == "look at rachels dad" goto examine_Dad
if "%input%" == "rachels dad" goto examine_Dad
if "%input%" == "examine rachels father" goto examine_Dad
if "%input%" == "look rachels father" goto examine_Dad
if "%input%" == "look at rachels father" goto examine_Dad
if "%input%" == "rachels father" goto examine_Dad
if "%input%" == "examine dad" goto examine_Dad
if "%input%" == "look dad" goto examine_Dad
if "%input%" == "look at dad" goto examine_Dad
if "%input%" == "dad" goto examine_Dad
if "%input%" == "examine father" goto examine_Dad
if "%input%" == "look father" goto examine_Dad
if "%input%" == "look at father" goto examine_Dad
if "%input%" == "father" goto examine_Dad
if "%input%" == "examine mr wheeler" goto examine_Dad
if "%input%" == "look mr wheeler" goto examine_Dad
if "%input%" == "look at mr wheeler" goto examine_Dad
if "%input%" == "mr wheeler" goto examine_Dad
if "%input%" == "examine mr. wheeler" goto examine_Dad
if "%input%" == "look mr. wheeler" goto examine_Dad
if "%input%" == "look at mr. wheeler" goto examine_Dad
if "%input%" == "mr. wheeler" goto examine_Dad
if "%input%" == "examine her dad" goto examine_Dad
if "%input%" == "look her dad" goto examine_Dad
if "%input%" == "look at her dad" goto examine_Dad
if "%input%" == "her dad" goto examine_Dad
if "%input%" == "examine her father" goto examine_Dad
if "%input%" == "look her father" goto examine_Dad
if "%input%" == "look at her father" goto examine_Dad
if "%input%" == "her father" goto examine_Dad
if "%input%" == "rachel's mom" goto examine_Mom
if "%input%" == "examine rachel's mom" goto examine_Mom
if "%input%" == "look at rachel's mom" goto examine_Mom
if "%input%" == "look rachel's mom" goto examine_Mom
if "%input%" == "rachel's mother" goto examine_Mom
if "%input%" == "examine rachel's mother" goto examine_Mom
if "%input%" == "look at rachel's mother" goto examine_Mom
if "%input%" == "look rachel's mother" goto examine_Mom
if "%input%" == "rachels mom" goto examine_Mom
if "%input%" == "examine rachels mom" goto examine_Mom
if "%input%" == "look at rachels mom" goto examine_Mom
if "%input%" == "look rachels mom" goto examine_Mom
if "%input%" == "rachels mother" goto examine_Mom
if "%input%" == "examine rachels mother" goto examine_Mom
if "%input%" == "look at rachels mother" goto examine_Mom
if "%input%" == "look rachels mother" goto examine_Mom
if "%input%" == "mom" goto examine_Mom
if "%input%" == "examine mom" goto examine_Mom
if "%input%" == "look at mom" goto examine_Mom
if "%input%" == "look mom" goto examine_Mom
if "%input%" == "mother" goto examine_Mom
if "%input%" == "examine mother" goto examine_Mom
if "%input%" == "look at mother" goto examine_Mom
if "%input%" == "look mother" goto examine_Mom
if "%input%" == "ms. wheeler" goto examine_Mom
if "%input%" == "examine ms. wheeler" goto examine_Mom
if "%input%" == "look at ms. wheeler" goto examine_Mom
if "%input%" == "look ms. wheeler" goto examine_Mom
if "%input%" == "ms wheeler" goto examine_Mom
if "%input%" == "examine ms wheeler" goto examine_Mom
if "%input%" == "look at ms wheeler" goto examine_Mom
if "%input%" == "look ms wheeler" goto examine_Mom
if "%input%" == "mrs. wheeler" goto examine_Mom
if "%input%" == "examine mrs. wheeler" goto examine_Mom
if "%input%" == "look at mrs. wheeler" goto examine_Mom
if "%input%" == "look mrs. wheeler" goto examine_Mom
if "%input%" == "mrs wheeler" goto examine_Mom
if "%input%" == "examine mrs wheeler" goto examine_Mom
if "%input%" == "look at mrs wheeler" goto examine_Mom
if "%input%" == "look mrs wheeler" goto examine_Mom
if "%input%" == "her mom" goto examine_Mom
if "%input%" == "examine her mom" goto examine_Mom
if "%input%" == "look at her mom" goto examine_Mom
if "%input%" == "look her mom" goto examine_Mom
if "%input%" == "her mother" goto examine_Mom
if "%input%" == "examine her mother" goto examine_Mom
if "%input%" == "look at her mother" goto examine_Mom
if "%input%" == "look her mother" goto examine_Mom
if "%input%" == "parents" goto examine_parents
if "%input%" == "examine parents" goto examine_parents
if "%input%" == "look at parents" goto examine_parents
if "%input%" == "look parents" goto examine_parents
if "%input%" == "watch parents" goto examine_parents
if "%input%" == "her parents" goto examine_parents
if "%input%" == "examine her parents" goto examine_parents
if "%input%" == "look at her parents" goto examine_parents
if "%input%" == "look her parents" goto examine_parents
if "%input%" == "watch her parents" goto examine_parents
if "%input%" == "rachels parents" goto examine_parents
if "%input%" == "examine rachels parents" goto examine_parents
if "%input%" == "look at rachels parents" goto examine_parents
if "%input%" == "look rachels parents" goto examine_parents
if "%input%" == "watch rachels parents" goto examine_parents
if "%input%" == "rachel's parents" goto examine_parents
if "%input%" == "examine rachel's parents" goto examine_parents
if "%input%" == "look at rachel's parents" goto examine_parents
if "%input%" == "look rachel's parents" goto examine_parents
if "%input%" == "watch rachel's parents" goto examine_parents
if "%input%" == "mom and dad" goto examine_parents
if "%input%" == "examine mom and dad" goto examine_parents
if "%input%" == "look at mom and dad" goto examine_parents
if "%input%" == "look mom and dad" goto examine_parents
if "%input%" == "watch mom and dad" goto examine_parents
if "%input%" == "dad and mom" goto examine_parents
if "%input%" == "examine dad and mom" goto examine_parents
if "%input%" == "look at dad and mom" goto examine_parents
if "%input%" == "look dad and mom" goto examine_parents
if "%input%" == "watch dad and mom" goto examine_parents
if "%input%" == "her mom and dad" goto examine_parents
if "%input%" == "examine her mom and dad" goto examine_parents
if "%input%" == "look at her mom and dad" goto examine_parents
if "%input%" == "look her mom and dad" goto examine_parents
if "%input%" == "watch her mom and dad" goto examine_parents
if "%input%" == "her dad and mom" goto examine_parents
if "%input%" == "examine her dad and mom" goto examine_parents
if "%input%" == "look at her dad and mom" goto examine_parents
if "%input%" == "look her dad and mom" goto examine_parents
if "%input%" == "watch her dad and mom" goto examine_parents
if "%input%" == "mother and father" goto examine_parents
if "%input%" == "examine mother and father" goto examine_parents
if "%input%" == "look at mother and father" goto examine_parents
if "%input%" == "look mother and father" goto examine_parents
if "%input%" == "watch mother and father" goto examine_parents
if "%input%" == "father and mother" goto examine_parents
if "%input%" == "examine father and mother" goto examine_parents
if "%input%" == "look at father and mother" goto examine_parents
if "%input%" == "look father and mother" goto examine_parents
if "%input%" == "watch father and mother" goto examine_parents
if "%input%" == "her mother and father" goto examine_parents
if "%input%" == "examine her mother and father" goto examine_parents
if "%input%" == "look at her mother and father" goto examine_parents
if "%input%" == "look her mother and father" goto examine_parents
if "%input%" == "watch her mother and father" goto examine_parents
if "%input%" == "her father and mother" goto examine_parents
if "%input%" == "examine her father and mother" goto examine_parents
if "%input%" == "look at her father and mother" goto examine_parents
if "%input%" == "look her father and mother" goto examine_parents
if "%input%" == "watch her father and mother" goto examine_parents
if "%input%" == "rachel's mom and dad" goto examine_parents
if "%input%" == "examine rachel's mom and dad" goto examine_parents
if "%input%" == "look at rachel's mom and dad" goto examine_parents
if "%input%" == "look rachel's mom and dad" goto examine_parents
if "%input%" == "watch rachel's mom and dad" goto examine_parents
if "%input%" == "rachel's dad and mom" goto examine_parents
if "%input%" == "examine rachel's dad and mom" goto examine_parents
if "%input%" == "look at rachel's dad and mom" goto examine_parents
if "%input%" == "look rachel's dad and mom" goto examine_parents
if "%input%" == "watch rachel's dad and mom" goto examine_parents
if "%input%" == "rachel's mother and father" goto examine_parents
if "%input%" == "examine rachel's mother and father" goto examine_parents
if "%input%" == "look at rachel's mother and father" goto examine_parents
if "%input%" == "look rachel's mother and father" goto examine_parents
if "%input%" == "watch rachel's mother and father" goto examine_parents
if "%input%" == "rachel's father and mother" goto examine_parents
if "%input%" == "examine rachel's father and mother" goto examine_parents
if "%input%" == "look at rachel's father and mother" goto examine_parents
if "%input%" == "look rachel's father and mother" goto examine_parents
if "%input%" == "watch rachel's father and mother" goto examine_parents
if "%input%" == "rachels mom and dad" goto examine_parents
if "%input%" == "examine rachels mom and dad" goto examine_parents
if "%input%" == "look at rachels mom and dad" goto examine_parents
if "%input%" == "look rachels mom and dad" goto examine_parents
if "%input%" == "watch rachels mom and dad" goto examine_parents
if "%input%" == "rachels dad and mom" goto examine_parents
if "%input%" == "examine rachels dad and mom" goto examine_parents
if "%input%" == "look at rachels dad and mom" goto examine_parents
if "%input%" == "look rachels dad and mom" goto examine_parents
if "%input%" == "watch rachels dad and mom" goto examine_parents
if "%input%" == "rachels mother and father" goto examine_parents
if "%input%" == "examine rachels mother and father" goto examine_parents
if "%input%" == "look at rachels mother and father" goto examine_parents
if "%input%" == "look rachels mother and father" goto examine_parents
if "%input%" == "watch rachels mother and father" goto examine_parents
if "%input%" == "rachels father and mother" goto examine_parents
if "%input%" == "examine rachels father and mother" goto examine_parents
if "%input%" == "look at rachels father and mother" goto examine_parents
if "%input%" == "look rachels father and mother" goto examine_parents
if "%input%" == "watch rachels father and mother" goto examine_parents
if "%input%" == "mr. and mrs. wheeler" goto examine_parents
if "%input%" == "examine mr. and mrs. wheeler" goto examine_parents
if "%input%" == "look at mr. and mrs. wheeler" goto examine_parents
if "%input%" == "look mr. and mrs. wheeler" goto examine_parents
if "%input%" == "watch mr. and mrs. wheeler" goto examine_parents
if "%input%" == "mrs. and mr. wheeler" goto examine_parents
if "%input%" == "examine mrs. and mr. wheeler" goto examine_parents
if "%input%" == "look at mrs. and mr. wheeler" goto examine_parents
if "%input%" == "look mrs. and mr. wheeler" goto examine_parents
if "%input%" == "watch mrs. and mr. wheeler" goto examine_parents
if "%input%" == "mr. and ms. wheeler" goto examine_parents
if "%input%" == "examine mr. and ms. wheeler" goto examine_parents
if "%input%" == "look at mr. and ms. wheeler" goto examine_parents
if "%input%" == "look mr. and ms. wheeler" goto examine_parents
if "%input%" == "watch mr. and ms. wheeler" goto examine_parents
if "%input%" == "ms. and mr. wheeler" goto examine_parents
if "%input%" == "examine ms. and mr. wheeler" goto examine_parents
if "%input%" == "look at ms. and mr. wheeler" goto examine_parents
if "%input%" == "look ms. and mr. wheeler" goto examine_parents
if "%input%" == "watch ms. and mr. wheeler" goto examine_parents
if "%input%" == "mr and mrs wheeler" goto examine_parents
if "%input%" == "examine mr and mrs wheeler" goto examine_parents
if "%input%" == "look at mr and mrs wheeler" goto examine_parents
if "%input%" == "look mr and mrs wheeler" goto examine_parents
if "%input%" == "watch mr and mrs wheeler" goto examine_parents
if "%input%" == "mrs and mr wheeler" goto examine_parents
if "%input%" == "examine mrs and mr wheeler" goto examine_parents
if "%input%" == "look at mrs and mr wheeler" goto examine_parents
if "%input%" == "look mrs and mr wheeler" goto examine_parents
if "%input%" == "watch mrs and mr wheeler" goto examine_parents
if "%input%" == "mr and ms wheeler" goto examine_parents
if "%input%" == "examine mr and ms wheeler" goto examine_parents
if "%input%" == "look at mr and ms wheeler" goto examine_parents
if "%input%" == "look mr and ms wheeler" goto examine_parents
if "%input%" == "watch mr and ms wheeler" goto examine_parents
if "%input%" == "ms and mr wheeler" goto examine_parents
if "%input%" == "examine ms and mr wheeler" goto examine_parents
if "%input%" == "look at ms and mr wheeler" goto examine_parents
if "%input%" == "look ms and mr wheeler" goto examine_parents
if "%input%" == "watch ms and mr wheeler" goto examine_parents

if "%input%" == "use thing" goto use_device
if "%input%" == "mess with thing" goto use_device
if "%input%" == "mess thing" goto use_device
if "%input%" == "tinker with thing" goto use_device
if "%input%" == "tinker thing" goto use_device
if "%input%" == "turn up thing" goto use_device
if "%input%" == "turn thing up" goto use_device
if "%input%" == "turn down thing" goto use_device
if "%input%" == "turn thing down" goto use_device
if "%input%" == "turn on thing" goto use_device
if "%input%" == "turn thing on" goto use_device
if "%input%" == "turn off thing" goto use_device
if "%input%" == "turn thing off" goto use_device
if "%input%" == "change thing" goto use_device

if "%input%" == "use interface" goto use_device
if "%input%" == "mess with interface" goto use_device
if "%input%" == "mess interface" goto use_device
if "%input%" == "tinker with interface" goto use_device
if "%input%" == "tinker interface" goto use_device
if "%input%" == "turn up interface" goto use_device
if "%input%" == "turn interface up" goto use_device
if "%input%" == "turn down interface" goto use_device
if "%input%" == "turn interface down" goto use_device
if "%input%" == "turn on interface" goto use_device
if "%input%" == "turn interface on" goto use_device
if "%input%" == "turn off interface" goto use_device
if "%input%" == "turn interface off" goto use_device
if "%input%" == "change interface" goto use_device

if "%input%" == "use foreign interface" goto use_device
if "%input%" == "mess with foreign interface" goto use_device
if "%input%" == "mess foreign interface" goto use_device
if "%input%" == "tinker with foreign interface" goto use_device
if "%input%" == "tinker foreign interface" goto use_device
if "%input%" == "turn up foreign interface" goto use_device
if "%input%" == "turn foreign interface up" goto use_device
if "%input%" == "turn down foreign interface" goto use_device
if "%input%" == "turn foreign interface down" goto use_device
if "%input%" == "turn on foreign interface" goto use_device
if "%input%" == "turn foreign interface on" goto use_device
if "%input%" == "turn off foreign interface" goto use_device
if "%input%" == "turn foreign interface off" goto use_device
if "%input%" == "change foreign interface" goto use_device

if "%input%" == "use box" goto use_device
if "%input%" == "mess with box" goto use_device
if "%input%" == "mess box" goto use_device
if "%input%" == "tinker with box" goto use_device
if "%input%" == "tinker box" goto use_device
if "%input%" == "turn up box" goto use_device
if "%input%" == "turn box up" goto use_device
if "%input%" == "turn down box" goto use_device
if "%input%" == "turn box down" goto use_device
if "%input%" == "turn on box" goto use_device
if "%input%" == "turn box on" goto use_device
if "%input%" == "turn off box" goto use_device
if "%input%" == "turn box off" goto use_device
if "%input%" == "change box" goto use_device

if "%input%" == "use metal box" goto use_device
if "%input%" == "mess with metal box" goto use_device
if "%input%" == "mess metal box" goto use_device
if "%input%" == "tinker with metal box" goto use_device
if "%input%" == "tinker metal box" goto use_device
if "%input%" == "turn up metal box" goto use_device
if "%input%" == "turn metal box up" goto use_device
if "%input%" == "turn down metal box" goto use_device
if "%input%" == "turn metal box down" goto use_device
if "%input%" == "turn on metal box" goto use_device
if "%input%" == "turn metal box on" goto use_device
if "%input%" == "turn off metal box" goto use_device
if "%input%" == "turn metal box off" goto use_device
if "%input%" == "change metal box" goto use_device

if "%input%" == "use metal device" goto use_device
if "%input%" == "mess with metal device" goto use_device
if "%input%" == "mess metal device" goto use_device
if "%input%" == "tinker with metal device" goto use_device
if "%input%" == "tinker metal device" goto use_device
if "%input%" == "turn up metal device" goto use_device
if "%input%" == "turn metal device up" goto use_device
if "%input%" == "turn down metal device" goto use_device
if "%input%" == "turn metal device down" goto use_device
if "%input%" == "turn on metal device" goto use_device
if "%input%" == "turn metal device on" goto use_device
if "%input%" == "turn off metal device" goto use_device
if "%input%" == "turn metal device off" goto use_device
if "%input%" == "change metal device" goto use_device

if "%input%" == "touch box" goto use_device
if "%input%" == "poke box" goto use_device
if "%input%" == "change box" goto use_device
if "%input%" == "play with box" goto use_device

if "%input%" == "touch interface" goto use_device
if "%input%" == "poke interface" goto use_device
if "%input%" == "change interface" goto use_device
if "%input%" == "play with interface" goto use_device

if "%input%" == "touch foreign interface" goto use_device
if "%input%" == "poke foreign interface" goto use_device
if "%input%" == "change foreign interface" goto use_device
if "%input%" == "play with foreign interface" goto use_device

if "%input%" == "touch device" goto use_device
if "%input%" == "poke device" goto use_device
if "%input%" == "change device" goto use_device
if "%input%" == "play with device" goto use_device

if "%input%" == "touch metal box" goto use_device
if "%input%" == "poke metal box" goto use_device
if "%input%" == "change metal box" goto use_device
if "%input%" == "play with metal box" goto use_device

if "%input%" == "touch metal device" goto use_device
if "%input%" == "poke metal device" goto use_device
if "%input%" == "change metal device" goto use_device
if "%input%" == "play with metal device" goto use_device

if "%input%" == "touch thing" goto use_device
if "%input%" == "poke thing" goto use_device
if "%input%" == "change thing" goto use_device
if "%input%" == "play with thing" goto use_device

if "%input%" == "noInput" (
cls
goto kitchen
)
goto commandError

:talkToParents
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You talk to Rachel's parents.
echo      ^> "We will have some food ready for eating soon. You
echo        two just keep hanging out for now."
echo      ^> They don't seem to notice Rachel isn't with you.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:talkToDad
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You talk to Mr. Wheeler.
echo      ^> "We will have some food ready for eating soon. You
echo        two just keep hanging out for now."
echo      ^> Neither he nor his wife seems to notice Rachel isn't
echo        actually with you.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:examine_Dad
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You examine Mr. Wheeler.
echo      ^> Rachel's dad would normally be wearing an 80's
echo        metal band tour shirt and sweat pants. Instead, he's
echo        in short sleeves and shorts, despite the easily
echo        below-40 temperatures in the house. He confusedly
echo        reads a box of saltine crackers.
echo      ^> Aside from being dressed weird, he appears the same
echo        as ever.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:examine_Mom
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You examine Mrs. Wheeler.
echo      ^> A yellow sun dress in the dead of January and a
echo        house with no heat? Rachel's mom would normally wear
echo        flannel pants and maybe a hoodie.
echo      ^> Aside from being dressed weird, she appears the
echo        same as ever.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:examine_parents
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You examine Mr. and Mrs. Wheeler.
echo      ^> Other than their summer attire in winter, they
echo        appear normal. They're looking through the cupboards
echo        and drawers awkwardly.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:talkToMom
if "%parents%" == "absent" goto commandError
if %session% == 2 (
set /a time=%time% + 1
echo.
echo    You talk to Mrs. Wheeler.
echo      ^> "Nevermind what I said earlier about where we come
echo        from, okay Shawn?"
echo      ^> Neither she nor her husband seems to notice Rachel isn't
echo        with you.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:takeWeapon_fromRachel
echo.
echo    "Hey, what's that behind your back?"
echo      ^> When Rachel turns around, you try to take her weapon.
echo      ^> She catches on just as your fingers graze the
echo        cylindrical thermos-shaped tool, and a tug-of-war ensues.
echo      ^> Rachel stomps on your foot and pulls the weapon back to
echo        herself. "You pest!" she cries, and she presses it to
echo        your skin before you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver

:putFingerInHole
echo.
echo    You stick your finger in the little hole.
echo      ^> Nothing happens.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation

:putPenisInHole
echo.
echo    You stick your penis in the little hole.
echo      ^> A normal-sized penis wouldn't fit, but yours is
echo        small enough.
echo      ^> Oh, shit, it's stuck!
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver

:cutWires
echo.
if "%rachel%" == "present" (
set /a suspicion=%suspicion% + 9
if %suspicion% GTR 9 (
echo    You attempt to sever the wires.
echo      ^> Rachel interferes, holding your hand back.
echo        "We cannot have you interfering with our plans," she says
echo        in an angry humming voice unlike her own. She procures a
echo        cylindrical thermos-shaped tool and swiftly presses it
echo        to your skin before you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver
)
echo    You attempt to sever the wires.
echo      ^> Rachel interferes. "Stop that." Her tone is serious.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen
)
if "%rachel%" == "absent" (
if "%parents%" == "present" (
echo    You attempt to sever the wires.
echo      ^> "Hey! Stop!" cries Mr. Wheeler.
echo      ^> "What do you think you're doing?" Mrs. Wheeler asks,
echo        approaching you. Her voice cracks into a strange humming
echo        tone. "You are being too pesky for your own good..." She
echo        procures a cylindrical thermos-shaped tool and swiftly
echo        presses it to your skin before you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver
)
echo    You attempt to sever the wires.
echo      ^> No one is around to notice or stop you, but the wires
echo        are strong - stronger than any you've seen before. You
echo        fail to damage them.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto kitchen
)
goto commandError

:breakDevice
echo.
if "%rachel%" == "present" (
set /a suspicion=%suspicion% + 9
if %suspicion% GTR 9 (
echo    You attempt to break the device.
echo      ^> After one strong blow, Rachel grabs your arm with a
echo        jarring unhuman strength.
echo      ^> "We cannot have you interfering with our plans," she
echo        says in a humming voice unlike her own. Rachel procures
echo        a cylindrical thermos-shaped tool and swiftly presses
echo        it to your skin before you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver
)
echo    You attempt to break the device.
echo      ^> After one strong blow, Rachel grabs your arm with a
echo        jarring unhuman strength. "Cut it out."
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen
)
if "%rachel%" == "absent" (
if "%parents%" == "present" (
echo    You attempt to break the device.
echo      ^> "Hey! Stop!" cries Mr. Wheeler.
echo      ^> "What do you think you're doing?" Mrs. Wheeler asks,
echo        approaching you. Her voice cracks into a strange humming
echo        tone. "You are being too pesky for your own good..." She
echo        procures a cylindrical thermos-shaped tool and swiftly
echo        presses it to your skin before you can stop her.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto gameOver
)
echo    You attempt to break the device.
echo      ^> No one is around to notice or stop you, but it
echo        doesn't matter. Your blows don't even leave a scratch.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto kitchen
)
goto commandError

:examineAlienDevice
echo.
echo    You examine the strange new device.
echo      ^> It's matte and metallic, mostly featureless, like
echo        something out of a science fiction movie.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:examine_diningTable
echo.
echo    You examine the dining table.
echo      ^> It's a nice oak table of about five square feet.
echo        A candle and lighter sit among some scattered papers.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:smellCandle
set /a time=%time% + 1
echo.
echo    You sniff the candle.
echo      ^> Smells like a Christmas tree!
echo      ^> The label reads, "Balsam & Cedar".
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:lightCandle
set /a time=%time% + 1
echo.
if "%triedLightCandle%" == "yes" (
echo    You attempt to light the candle.
echo      ^> The lighter won't work.
if "%rachel%" == "present" (
echo      ^> Rachel untenses as you set it back down on the table.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen
)
echo    You attempt to light the candle.
set triedLightCandle=yes
echo      ^> The lighter sputters a quick flame that dies instantly.
echo        You try a few more times, but the lighter doesn't work.
if "%rachel%" == "present" (
echo      ^> Rachel untenses as you set it back down on the table.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:burnPapers
set /a time=%time% + 1
echo.
echo    You attempt to burn the papers.
echo      ^> The lighter won't work.
if "%rachel%" == "present" (
echo      ^> Rachel untenses as you set it back down on the table.
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:examine_refrigerator
echo.
echo    You examine the refrigerator.
echo      ^> Nothing special about it.
echo      ^> There are some magnets and notes stuck to it.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:interactRefrigerator
echo.
echo    It's almost dinner time! Hold your horses.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto kitchen

:examine_magnets
echo.
echo    You examine the magnets.
echo      ^> They're small and there are multiple colors.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:examine_notes
echo.
echo    You examine the notes on the refrigerator.
echo      ^> "I love you!"
echo      ^> "Cancel meeting Thurs"
echo      ^> "Lunch"
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:examine_lighter
echo.
echo    You examine the lighter.
echo      ^> It's one of those little BIC pocket lighters.
echo        It's red.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:examine_candle
echo.
echo    You examine the candle.
echo      ^> It's a green medium-sized Yankee Candle jar.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:examine_thermostat
echo.
echo    You examine the thermostat.
echo      ^> Something is wrong here.
echo        There is a thin metal panel stuck to the wall beside the
echo        temperature control unit. Wires poke out of the
echo        thermostat and connect into the weird new device.
echo      ^> The thermostat's display is blank, but you can tell it
echo        must be below 40 degrees in the house.
echo.
if "%rachelTalkedAboutThermostat%" == "no" (
if "%rachel%" == "present" (
echo      ^> Rachel notices you examining the thermostat.
echo        "Oh, don't mind that. It's just a, uh... upgrade!"
echo.
set rachelTalkedAboutThermostat=yes
set /a time=%time% + 1
)
)
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:use_device
echo.
echo    You try to tinker with the device.
if "%rachel%" == "present" (
echo      ^> Rachel stops you. "You probably shouldn't mess with
echo         that," she says.
echo.
set /a suspicion=%suspicion% + 1
set /a time=%time% + 1
)
if "%rachel%" == "absent" (
if "%parents%" == "present" (
echo      ^> "Hey!" Mrs. Wheeler says, startled. "Don't worry about
echo        that thing, okay Shawn?" Mr. Wheeler watches you
echo        closely, even after Mrs. Wheeler turns away.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a suspicion=%suspicion% + 2
set /a time=%time% + 2
goto kitchen
)
echo      ^> You try to tinker with the device, but to no avail...
echo.
set /a time=%time% + 2
)
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:use_thermostat
echo.
echo    You try to use the thermostat.
echo      ^> Something is wrong here.
echo        The temperature control unit's interface is blank. Wires
echo        reach from it to a thin metal panel you haven't seen
echo        before stuck to the wall beside it. You don't understand
echo        the new foreign interface.
echo.
if "%rachelTalkedAboutThermostat%" == "yes" (
if "%rachel%" == "present" (
echo      ^> "You probably shouldn't mess with that," Rachel says.
echo.
set rachelTalkedAboutThermostat=yes
set /a time=%time% + 1
)
)
if "%rachelTalkedAboutThermostat%" == "no" (
if "%rachel%" == "present" (
echo      ^> When you reach for the thermostat, Rachel stops you.
echo        "Oh, don't mind that. It's just a, uh... upgrade!
echo        You probably shouldn't mess with it."
echo.
set rachelTalkedAboutThermostat=yes
set /a time=%time% + 1
)
)
if "%rachel%" == "absent" (
if "%parents%" == "present" (
echo      ^> "Hey!" Mrs. Wheeler says, startled. "Don't worry about
echo        that thing, okay Shawn?" Mr. Wheeler watches you
echo        closely, even after Mrs. Wheeler turns away.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 2
goto kitchen
)
echo      ^> You try to tinker with the thermostat and connected
echo        device, but to no avail...
echo.
set /a time=%time% + 2
)
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen

:examine_diningTablePapers
echo.
if "%readNewspapers%" == "yes" (
echo    You examine the papers more closely.
)
if "%readNewspapers%" == "no" (
echo    You examine the papers.
)
echo      ^> They're newspapers, but they're not recent. The stories
echo        on each yellowed page appear to deal with a 1974 scare
echo        involving an alleged UFO in this very town.
echo.
echo      ^> "Strange cylindrical craft spotted hovering over Wilkins
echo        Farm," "Residents believe space ship visited Madison
echo        Monday," "Pentagon officials visit Madison following UFO
echo        sighting earlier this week," the headlines read.
if "%readNewspapers%" == "yes" (
echo.
echo      ^> The assorted articles report a large metal craft that
echo        seemed to defy gravity that day in 1974. According to
echo        witnesses - and there were many of them - the featureless
echo        20-yard-long cylinder materialized and drifted slowly
echo        through the Madison sky for about five minutes before
echo        eventually disappearing back into thin air.
)
if "%readNewspapers%" == "no" (
echo.
echo      ^> Rachel says, "What a bunch of baloney? Don't you think
echo        that's a bunch of baloney?"
set readNewspapers=yes
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 4
goto kitchen

:moveFromKitchenToBasement
if "%alienKey%" == "no" (
echo.
echo    You head for the door to the basement stairs.
echo      ^> Something is wrong.
echo        The door and lock have been replaced with a new metal
echo        device complete with a strange blinking red light. The
echo        only other feature on the sleek box is a hole about one
echo        centimeter in diameter.
if "%rachel%" == "present" (
if "%noticedBasementDevice%" == "no" (
echo      ^> "That will keep the, uh... rats out," Rachel says
echo        lamely. That's normally where you to go to hang out.
set /a time=%time% + 1
set noticedBasementDevice=yes
)
)
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto kitchen
)
echo.
echo    You walk down to the basement.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=basement
set /a time=%time% + 1
goto basement

:cutscene_parentsComeDownstairs
set endSessionOne_cutscene=over
set session=2
cls
echo.
if "%location%" == "livingroom" (
echo       ^> You and Rachel are in the living room when her parents
echo         join you downstairs.
)
if "%location%" == "kitchen" (
echo       ^> You and Rachel are in the kitchen when her parents
echo         join you downstairs.
)
echo.
echo     [Press any key to continue.]
pause >nul
cls
echo.
if "%location%" == "livingroom" (
echo       ^> You and Rachel are in the living room when her parents
echo         join you downstairs.
)
if "%location%" == "kitchen" (
echo       ^> You and Rachel are in the kitchen when her parents
echo         join you downstairs.
)
echo       ^> "Alright, kids," Mr. Wheeler says. "We are now going
echo         to try our hands in the kitchen. We will have some
echo         food ready for eating in just a little bit."
pause >nul
if "%location%" == "livingroom" (
echo       ^> They walk past you and Rachel to the kitchen.
pause >nul
echo       ^> When you and Rachel are alone again, Rachel utters a
echo         strange squeak.
pause >nul
echo       ^> Cupping both hands to her face as if it would fall
echo         off if she didn't, Rachel runs to the bathroom. "I
echo         need to use the restroom!"
pause >nul
echo       ^> You are alone.
set rachel=absent
set bathroom=occupied
pause >nul
echo.
echo     [Press any key to continue.]
pause >nul
cls
goto livingroom
)
echo.
echo     [Press any key to continue.]
pause >nul
cls
goto kitchen

:rachelLeavesForSession2
cls
echo.
echo       ^> As you and Rachel leave her parents alone and
echo         return to the living room, Rachel utters a strange
echo         squeak.
echo.
echo     [Press any key to continue.]
pause >nul
cls
echo.
echo       ^> As you and Rachel leave her parents alone and
echo         return to the living room, Rachel utters a strange
echo         squeak.
echo       ^> Cupping both hands to her face as if it would fall
echo         off if she didn't, Rachel runs to the bathroom. "I
echo         need to use the restroom!"
pause >nul
echo       ^> You are alone.
set rachel=absent
set bathroom=occupied
pause >nul
echo.
echo     [Press any key to continue.]
pause >nul
cls
goto livingroom
)
echo.
echo     [Press any key to continue.]
pause >nul
cls
goto kitchen

:moveFromDownstairsToUpstairsHall
if "%rachel%" == "present" (
echo.
echo    You start to go upstairs, but Rachel stops you.
echo      ^> "Wait!" she says.
echo        "We can't go up there because, uh...
echo        We should probably just leave my parents alone for now."
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto livingroom
)
echo.
echo    You walk upstairs.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=upstairsHall
set /a time=%time% + 1
goto upstairsHall

:upstairsHall
if %session% == 2 (
set parents=absent
set rachel=absent
)

echo.
echo    You are in the upstairs hallway.
goto timeDisplay
:upstairsHall_cont
echo      ^> You are alone.
echo      ^> From here you can enter Rachel's bedroom, her parents'
echo        bedroom, the upstairs bathroom, or go back downstairs
echo        to the living room.
if %turnsPassed% GTR 5 (
if "%looked%" == "no" (
echo.
echo      ^> ^(Try looking around.^)
)
)
echo.
echo   [What do you do?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1
if "%input%" == "look" goto look
if "%input%" == "look around" goto look
if "%input%" == "examine picture" goto examine_hallArt
if "%input%" == "look at picture" goto examine_hallArt
if "%input%" == "look picture" goto examine_hallArt
if "%input%" == "check picture" goto examine_hallArt
if "%input%" == "picture" goto examine_hallArt
if "%input%" == "examine pictures" goto examine_hallArt
if "%input%" == "look at pictures" goto examine_hallArt
if "%input%" == "look pictures" goto examine_hallArt
if "%input%" == "check pictures" goto examine_hallArt
if "%input%" == "pictures" goto examine_hallArt
if "%input%" == "examine art" goto examine_hallArt
if "%input%" == "look at art" goto examine_hallArt
if "%input%" == "look art" goto examine_hallArt
if "%input%" == "check art" goto examine_hallArt
if "%input%" == "art" goto examine_hallArt
if "%input%" == "examine arts" goto examine_hallArt
if "%input%" == "look at arts" goto examine_hallArt
if "%input%" == "look arts" goto examine_hallArt
if "%input%" == "check arts" goto examine_hallArt
if "%input%" == "arts" goto examine_hallArt
if "%input%" == "examine painting" goto examine_hallArt
if "%input%" == "look at painting" goto examine_hallArt
if "%input%" == "look painting" goto examine_hallArt
if "%input%" == "check painting" goto examine_hallArt
if "%input%" == "painting" goto examine_hallArt
if "%input%" == "examine paintings" goto examine_hallArt
if "%input%" == "look at paintings" goto examine_hallArt
if "%input%" == "look paintings" goto examine_hallArt
if "%input%" == "check paintings" goto examine_hallArt
if "%input%" == "paintings" goto examine_hallArt
if "%input%" == "examine drawing" goto examine_hallArt
if "%input%" == "look at drawing" goto examine_hallArt
if "%input%" == "look drawing" goto examine_hallArt
if "%input%" == "check drawing" goto examine_hallArt
if "%input%" == "drawing" goto examine_hallArt
if "%input%" == "examine drawings" goto examine_hallArt
if "%input%" == "look at drawings" goto examine_hallArt
if "%input%" == "look drawings" goto examine_hallArt
if "%input%" == "check drawings" goto examine_hallArt
if "%input%" == "drawings" goto examine_hallArt
if "%input%" == "go to her room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in her room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into her room" goto moveFromHallToRachelsBedroom
if "%input%" == "go her room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to her room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in her room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into her room" goto moveFromHallToRachelsBedroom
if "%input%" == "move her room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to her room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in her room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into her room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk her room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter her room" goto moveFromHallToRachelsBedroom
if "%input%" == "her room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go in her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go into her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move to her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move in her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move into her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "enter her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "her bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go to her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "her bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "rachels room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "rachels bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "rachels bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "rachel's room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "rachel's bedroom" goto moveFromHallToRachelsBedroom
if "%input%" == "go to rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go in rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go into rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move to rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move in rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move into rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "move rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk to rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk in rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk into rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "walk rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "enter rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "rachel's bed room" goto moveFromHallToRachelsBedroom
if "%input%" == "go to room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go in room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go into room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move to room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move in room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move into room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk to room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk in room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk into room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk room" goto pleaseSpecifyWhichBedroom
if "%input%" == "enter room" goto pleaseSpecifyWhichBedroom
if "%input%" == "room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go to bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "go in bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "go into bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "go bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "move to bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "move in bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "move into bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "move bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk to bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk in bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk into bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "enter bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "bedroom" goto pleaseSpecifyWhichBedroom
if "%input%" == "go to bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go in bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go into bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "go bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move to bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move in bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move into bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "move bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk to bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk in bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk into bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "walk bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "enter bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "bed room" goto pleaseSpecifyWhichBedroom
if "%input%" == "leave" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back to downstairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back to down stairs" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "go back to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "walk back to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "move back to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back to livingroom" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "back to living room" goto moveFromUpstairsHallToLivingRoom
if "%input%" == "upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk upstairs bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to upstairs bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in upstairs bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into upstairs bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to upstairs bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move upstairs bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to upstairs bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in upstairs bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into upstairs bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to upstairs bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter upstairs bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk upstairs bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to upstairs bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in upstairs bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into upstairs bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to upstairs bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move upstairs bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to upstairs bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in upstairs bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into upstairs bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to upstairs bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter upstairs bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to bathroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to bathroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter bathroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to bath room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to bath room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter bath room" goto moveFromUpstairsHallToBathroom
if "%input%" == "upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk upstairs restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to upstairs restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in upstairs restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into upstairs restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to upstairs restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move upstairs restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to upstairs restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in upstairs restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into upstairs restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to upstairs restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter upstairs restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk upstairs rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to upstairs rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in upstairs rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into upstairs rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to upstairs rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move upstairs rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to upstairs rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in upstairs rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into upstairs rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to upstairs rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter upstairs rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to restroom" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to restroom" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter restroom" goto moveFromUpstairsHallToBathroom
if "%input%" == "rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go to rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go into rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "go in to rest room" goto moveFromUpstairsHallToBathroom
if "%input%" == "walk rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk to rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk into rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "walk in to rest room" walkto moveFromUpstairsHallToBathroom
if "%input%" == "move rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move to rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move into rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "move in to rest room" moveto moveFromUpstairsHallToBathroom
if "%input%" == "enter rest room" goto moveFromUpstairsHallToBathroom

if "%input%" == "noInput" (
cls
goto upstairsHall
)
goto commandError

:moveFromUpstairsHallToLivingRoom
echo.
echo    You return to the living room downstairs.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=livingroom
set /a time=%time% + 1
goto livingroom

:moveFromUpstairsHallToBathroom
echo.
echo    You enter the upstairs bathroom.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=upstairsBathroom
set /a time=%time% + 1
goto upstairsBathroom

:pleaseSpecifyWhichBedroom
echo.
echo    Please specify which bedroom!
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto upstairsHall

:examine_hallArt
echo.
echo    You examine the art.
echo      ^> Drawings and paintings that Rachel must have made
echo        in elementary school. Her parents framed them.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto upstairsHall

:upstairsBathroom
if %session% == 2 (
set parents=absent
set rachel=absent
)

echo.
echo    You are in the upstairs bathroom
goto timeDisplay
:upstairsBathroom_cont
echo      ^> You are alone.
if "%haveAlienKey%" == "no" (
echo      ^> There is a strange little doohickey on the counter.
)
echo      ^> From here you can return to the hall.
if %turnsPassed% GTR 5 (
if "%looked%" == "no" (
echo.
echo      ^> ^(Try looking around.^)
)
)
echo.
echo   [What do you do?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1
if "%input%" == "look" goto look
if "%input%" == "look around" goto look
if "%input%" == "leave" goto moveBackToUpstairsHall
if "%input%" == "leave bathroom" goto moveBackToUpstairsHall
if "%input%" == "leave bath room" goto moveBackToUpstairsHall
if "%input%" == "leave upstairs bathroom" goto moveBackToUpstairsHall
if "%input%" == "leave upstairs bath room" goto moveBackToUpstairsHall
if "%input%" == "leave restroom" goto moveBackToUpstairsHall
if "%input%" == "leave rest room" goto moveBackToUpstairsHall
if "%input%" == "leave upstairs restroom" goto moveBackToUpstairsHall
if "%input%" == "leave upstairs rest room" goto moveBackToUpstairsHall
if "%input%" == "hallway" goto moveBackToUpstairsHall
if "%input%" == "go hallway" goto moveBackToUpstairsHall
if "%input%" == "go to hallway" goto moveBackToUpstairsHall
if "%input%" == "go back to hallway" goto moveBackToUpstairsHall
if "%input%" == "return hallway" goto moveBackToUpstairsHall
if "%input%" == "return to hallway" goto moveBackToUpstairsHall
if "%input%" == "enter hallway" goto moveBackToUpstairsHall
if "%input%" == "move hallway" goto moveBackToUpstairsHall
if "%input%" == "move to hallway" goto moveBackToUpstairsHall
if "%input%" == "move back to hallway" goto moveBackToUpstairsHall
if "%input%" == "walk hallway" goto moveBackToUpstairsHall
if "%input%" == "walk to hallway" goto moveBackToUpstairsHall
if "%input%" == "walk back to hallway" goto moveBackToUpstairsHall
if "%input%" == "hall" goto moveBackToUpstairsHall
if "%input%" == "go hall" goto moveBackToUpstairsHall
if "%input%" == "go to hall" goto moveBackToUpstairsHall
if "%input%" == "go back to hall" goto moveBackToUpstairsHall
if "%input%" == "return hall" goto moveBackToUpstairsHall
if "%input%" == "return to hall" goto moveBackToUpstairsHall
if "%input%" == "enter hall" goto moveBackToUpstairsHall
if "%input%" == "move hall" goto moveBackToUpstairsHall
if "%input%" == "move to hall" goto moveBackToUpstairsHall
if "%input%" == "move back to hall" goto moveBackToUpstairsHall
if "%input%" == "walk hall" goto moveBackToUpstairsHall
if "%input%" == "walk to hall" goto moveBackToUpstairsHall
if "%input%" == "walk back to hall" goto moveBackToUpstairsHall
if "%input%" == "hall way" goto moveBackToUpstairsHall
if "%input%" == "go hall way" goto moveBackToUpstairsHall
if "%input%" == "go to hall way" goto moveBackToUpstairsHall
if "%input%" == "go back to hall way" goto moveBackToUpstairsHall
if "%input%" == "return hall way" goto moveBackToUpstairsHall
if "%input%" == "return to hall way" goto moveBackToUpstairsHall
if "%input%" == "enter hall way" goto moveBackToUpstairsHall
if "%input%" == "move hall way" goto moveBackToUpstairsHall
if "%input%" == "move to hall way" goto moveBackToUpstairsHall
if "%input%" == "move back to hall way" goto moveBackToUpstairsHall
if "%input%" == "walk hall way" goto moveBackToUpstairsHall
if "%input%" == "walk to hall way" goto moveBackToUpstairsHall
if "%input%" == "walk back to hall way" goto moveBackToUpstairsHall
if "%input%" == "upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "doohickey" goto takeAlienKey
if "%input%" == "take doohickey" goto takeAlienKey
if "%input%" == "grab doohickey" goto takeAlienKey
if "%input%" == "steal doohickey" goto takeAlienKey
if "%input%" == "get doohickey" goto takeAlienKey
if "%input%" == "pick up doohickey" goto takeAlienKey
if "%input%" == "pick doohickey up" goto takeAlienKey
if "%input%" == "doo hickey" goto takeAlienKey
if "%input%" == "take doo hickey" goto takeAlienKey
if "%input%" == "grab doo hickey" goto takeAlienKey
if "%input%" == "steal doo hickey" goto takeAlienKey
if "%input%" == "get doo hickey" goto takeAlienKey
if "%input%" == "pick up doo hickey" goto takeAlienKey
if "%input%" == "pick doo hickey up" goto takeAlienKey
if "%input%" == "cylinder" goto takeAlienKey
if "%input%" == "take cylinder" goto takeAlienKey
if "%input%" == "grab cylinder" goto takeAlienKey
if "%input%" == "steal cylinder" goto takeAlienKey
if "%input%" == "get cylinder" goto takeAlienKey
if "%input%" == "pick up cylinder" goto takeAlienKey
if "%input%" == "pick cylinder up" goto takeAlienKey
if "%input%" == "little cylinder" goto takeAlienKey
if "%input%" == "take little cylinder" goto takeAlienKey
if "%input%" == "grab little cylinder" goto takeAlienKey
if "%input%" == "steal little cylinder" goto takeAlienKey
if "%input%" == "get little cylinder" goto takeAlienKey
if "%input%" == "pick up little cylinder" goto takeAlienKey
if "%input%" == "pick little cylinder up" goto takeAlienKey
if "%input%" == "metal cylinder" goto takeAlienKey
if "%input%" == "take metal cylinder" goto takeAlienKey
if "%input%" == "grab metal cylinder" goto takeAlienKey
if "%input%" == "steal metal cylinder" goto takeAlienKey
if "%input%" == "get metal cylinder" goto takeAlienKey
if "%input%" == "pick up metal cylinder" goto takeAlienKey
if "%input%" == "pick metal cylinder up" goto takeAlienKey
if "%input%" == "little metal cylinder" goto takeAlienKey
if "%input%" == "take little metal cylinder" goto takeAlienKey
if "%input%" == "grab little metal cylinder" goto takeAlienKey
if "%input%" == "steal little metal cylinder" goto takeAlienKey
if "%input%" == "get little metal cylinder" goto takeAlienKey
if "%input%" == "pick up little metal cylinder" goto takeAlienKey
if "%input%" == "pick little metal cylinder up" goto takeAlienKey
if "%input%" == "chapstick" goto takeAlienKey
if "%input%" == "take chapstick" goto takeAlienKey
if "%input%" == "grab chapstick" goto takeAlienKey
if "%input%" == "steal chapstick" goto takeAlienKey
if "%input%" == "get chapstick" goto takeAlienKey
if "%input%" == "pick up chapstick" goto takeAlienKey
if "%input%" == "pick chapstick up" goto takeAlienKey
if "%input%" == "chap stick" goto takeAlienKey
if "%input%" == "take chap stick" goto takeAlienKey
if "%input%" == "grab chap stick" goto takeAlienKey
if "%input%" == "steal chap stick" goto takeAlienKey
if "%input%" == "get chap stick" goto takeAlienKey
if "%input%" == "pick up chap stick" goto takeAlienKey
if "%input%" == "pick chap stick up" goto takeAlienKey
if "%input%" == "it" goto takeAlienKey
if "%input%" == "take it" goto takeAlienKey
if "%input%" == "grab it" goto takeAlienKey
if "%input%" == "steal it" goto takeAlienKey
if "%input%" == "get it" goto takeAlienKey
if "%input%" == "pick up it" goto takeAlienKey
if "%input%" == "pick it up" goto takeAlienKey
if "%input%" == "wash hands" goto washHands
if "%input%" == "wash hands in sink" goto washHands
if "%input%" == "wash my hands" goto washHands
if "%input%" == "wash my hands in sink" goto washHands
if "%input%" == "wash face" goto washFace
if "%input%" == "wash face in sink" goto washFace
if "%input%" == "wash my face" goto washFace
if "%input%" == "wash my face in sink" goto washFace
if "%input%" == "turn on sink" goto turnSink_on
if "%input%" == "turn sink on" goto turnSink_on
if "%input%" == "tv on" goto turnSink_on
if "%input%" == "turnon sink" goto turnSink_on
if "%input%" == "turn off sink" goto turnSink_off
if "%input%" == "tv off" goto turnSink_off
if "%input%" == "turn sink off" goto turnSink_off
if "%input%" == "turnoff sink" goto turnSink_off
if "%input%" == "poop" goto useToilet
if "%input%" == "use toilet" goto useToilet
if "%input%" == "go to bathroom" goto useToilet
if "%input%" == "pee" goto useToilet
if "%input%" == "take shit" goto useToilet
if "%input%" == "take a shit" goto useToilet
if "%input%" == "piss" goto useToilet
if "%input%" == "take piss" goto useToilet
if "%input%" == "take a piss" goto useToilet
if "%input%" == "toilet" goto useToilet
if "%input%" == "" goto everythingIsAsItShouldBe
if "%input%" == "look " goto everythingIsAsItShouldBe
if "%input%" == "look in " goto everythingIsAsItShouldBe
if "%input%" == "look inside " goto everythingIsAsItShouldBe
if "%input%" == "look through " goto everythingIsAsItShouldBe
if "%input%" == "check " goto everythingIsAsItShouldBe
if "%input%" == "check in " goto everythingIsAsItShouldBe
if "%input%" == "check inside " goto everythingIsAsItShouldBe
if "%input%" == "check through " goto everythingIsAsItShouldBe
if "%input%" == "go through " goto everythingIsAsItShouldBe
if "%input%" == "examine " goto everythingIsAsItShouldBe
if "%input%" == "look at " goto everythingIsAsItShouldBe
if "%input%" == "cupboard" goto everythingIsAsItShouldBe
if "%input%" == "look cupboard" goto everythingIsAsItShouldBe
if "%input%" == "look in cupboard" goto everythingIsAsItShouldBe
if "%input%" == "look inside cupboard" goto everythingIsAsItShouldBe
if "%input%" == "look through cupboard" goto everythingIsAsItShouldBe
if "%input%" == "check cupboard" goto everythingIsAsItShouldBe
if "%input%" == "check in cupboard" goto everythingIsAsItShouldBe
if "%input%" == "check inside cupboard" goto everythingIsAsItShouldBe
if "%input%" == "check through cupboard" goto everythingIsAsItShouldBe
if "%input%" == "go through cupboard" goto everythingIsAsItShouldBe
if "%input%" == "examine cupboard" goto everythingIsAsItShouldBe
if "%input%" == "look at cupboard" goto everythingIsAsItShouldBe
if "%input%" == "cupboards" goto everythingIsAsItShouldBe
if "%input%" == "look cupboards" goto everythingIsAsItShouldBe
if "%input%" == "look in cupboards" goto everythingIsAsItShouldBe
if "%input%" == "look inside cupboards" goto everythingIsAsItShouldBe
if "%input%" == "look through cupboards" goto everythingIsAsItShouldBe
if "%input%" == "check cupboards" goto everythingIsAsItShouldBe
if "%input%" == "check in cupboards" goto everythingIsAsItShouldBe
if "%input%" == "check inside cupboards" goto everythingIsAsItShouldBe
if "%input%" == "check through cupboards" goto everythingIsAsItShouldBe
if "%input%" == "go through cupboards" goto everythingIsAsItShouldBe
if "%input%" == "examine cupboards" goto everythingIsAsItShouldBe
if "%input%" == "look at cupboards" goto everythingIsAsItShouldBe
if "%input%" == "cabinet" goto everythingIsAsItShouldBe
if "%input%" == "look cabinet" goto everythingIsAsItShouldBe
if "%input%" == "look in cabinet" goto everythingIsAsItShouldBe
if "%input%" == "look inside cabinet" goto everythingIsAsItShouldBe
if "%input%" == "look through cabinet" goto everythingIsAsItShouldBe
if "%input%" == "check cabinet" goto everythingIsAsItShouldBe
if "%input%" == "check in cabinet" goto everythingIsAsItShouldBe
if "%input%" == "check inside cabinet" goto everythingIsAsItShouldBe
if "%input%" == "check through cabinet" goto everythingIsAsItShouldBe
if "%input%" == "go through cabinet" goto everythingIsAsItShouldBe
if "%input%" == "examine cabinet" goto everythingIsAsItShouldBe
if "%input%" == "look at cabinet" goto everythingIsAsItShouldBe
if "%input%" == "cabinets" goto everythingIsAsItShouldBe
if "%input%" == "look cabinets" goto everythingIsAsItShouldBe
if "%input%" == "look in cabinets" goto everythingIsAsItShouldBe
if "%input%" == "look inside cabinets" goto everythingIsAsItShouldBe
if "%input%" == "look through cabinets" goto everythingIsAsItShouldBe
if "%input%" == "check cabinets" goto everythingIsAsItShouldBe
if "%input%" == "check in cabinets" goto everythingIsAsItShouldBe
if "%input%" == "check inside cabinets" goto everythingIsAsItShouldBe
if "%input%" == "check through cabinets" goto everythingIsAsItShouldBe
if "%input%" == "go through cabinets" goto everythingIsAsItShouldBe
if "%input%" == "examine cabinets" goto everythingIsAsItShouldBe
if "%input%" == "look at cabinets" goto everythingIsAsItShouldBe
if "%input%" == "drawer" goto everythingIsAsItShouldBe
if "%input%" == "look drawer" goto everythingIsAsItShouldBe
if "%input%" == "look in drawer" goto everythingIsAsItShouldBe
if "%input%" == "look inside drawer" goto everythingIsAsItShouldBe
if "%input%" == "look through drawer" goto everythingIsAsItShouldBe
if "%input%" == "check drawer" goto everythingIsAsItShouldBe
if "%input%" == "check in drawer" goto everythingIsAsItShouldBe
if "%input%" == "check inside drawer" goto everythingIsAsItShouldBe
if "%input%" == "check through drawer" goto everythingIsAsItShouldBe
if "%input%" == "go through drawer" goto everythingIsAsItShouldBe
if "%input%" == "examine drawer" goto everythingIsAsItShouldBe
if "%input%" == "look at drawer" goto everythingIsAsItShouldBe
if "%input%" == "drawers" goto everythingIsAsItShouldBe
if "%input%" == "look drawers" goto everythingIsAsItShouldBe
if "%input%" == "look in drawers" goto everythingIsAsItShouldBe
if "%input%" == "look inside drawers" goto everythingIsAsItShouldBe
if "%input%" == "look through drawers" goto everythingIsAsItShouldBe
if "%input%" == "check drawers" goto everythingIsAsItShouldBe
if "%input%" == "check in drawers" goto everythingIsAsItShouldBe
if "%input%" == "check inside drawers" goto everythingIsAsItShouldBe
if "%input%" == "check through drawers" goto everythingIsAsItShouldBe
if "%input%" == "go through drawers" goto everythingIsAsItShouldBe
if "%input%" == "examine drawers" goto everythingIsAsItShouldBe
if "%input%" == "look at drawers" goto everythingIsAsItShouldBe

if "%input%" == "mirror" goto lookAtMirror
if "%input%" == "look at mirror" goto lookAtMirror
if "%input%" == "look in mirror" goto lookAtMirror
if "%input%" == "look into mirror" goto lookAtMirror
if "%input%" == "look mirror" goto lookAtMirror
if "%input%" == "examine mirror" goto lookAtMirror
if "%input%" == "check mirror" goto lookAtMirror

if "%input%" == "noInput" (
cls
goto upstairsBathroom
)
goto commandError

:examine_doohickey
if "%haveAlientKey%" == "yes" (
echo.
echo    You examine the doohickey.
echo      ^> It's a little cylinder, very similar in size and shape
echo        to chapstick. It's made of a matte, dark gray metal.
echo      ^> Its only notable feature is a small glowing green dot
echo        light on the side.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
if "%location%" == "upstairsBathroom" (
echo.
echo    You examine the doohickey.
echo      ^> It's a little cylinder, very similar in size and shape
echo        to chapstick. It's made of a matte, dark gray metal.
echo      ^> Its only notable feature is a small glowing green dot
echo        light on the side.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
goto commandError

:lookAtMirror
echo.
echo    You look in the mirror.
echo      ^> Lookin' good, Shawn.
echo.
echo    [Press any key to continue.]
pause >nul
set /a time=%time% + 1
cls
goto returnLocation

:everythingIsAsItShouldBe
echo.
echo    Everything is as it should be.
echo.
echo    [Press any key to continue.]
pause >nul
set /a time=%time% + 1
cls
goto returnLocation

:useToilet
echo.
echo    You do your business.
echo      ^> A few moments after you flush the toilet, Mr. and Mrs.
echo        Wheeler throw the door open on you.
echo      ^> Mr. Wheeler walks toward you as Mrs. Wheeler says, "You
echo        should not be up here. You are being too pesky for your
echo        own good... and ours."
echo      ^> Mr. Wheeler procures a cylindrical thermos-shaped tool
echo        and swiftly presses it to your skin before you can react.
echo.
echo    [Press any key to continue.]
pause >nul
goto gameOver

:washHands
echo.
echo    You wash your hands in the sink.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:washFace
echo.
echo    You wash your face in the sink.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto returnLocation

:turnSink_on
if "%sink%" == on (
echo.
echo    You attempt to turn the sink on.
echo      ^> The sink is already on.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
echo.
echo    You turn the sink on.
echo      ^> Water trickles from the faucet.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set sink=on
set /a time=%time% + 1
goto returnLocation

:turnSink_off
if "%sink%" == off (
echo.
echo    You attempt to turn the sink off.
echo      ^> The sink is already off.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto returnLocation
)
echo.
echo    You turn the sink off.
echo      ^> One more drop drips from the faucet, and then
echo        it stops.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set sink=off
set /a time=%time% + 1
goto returnLocation

:takeAlienKey
echo.
echo    You take the doohickey.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set haveAlienKey=yes
set /a time=%time% + 1
goto upstairsBathroom

:moveFromHallToRachelsBedroom
echo.
echo    You enter Rachel's bedroom.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=rachelsBedroom
set /a time=%time% + 1
goto rachelsBedroom

:rachelsBedroom
if %session% == 2 (
set parents=absent
set rachel=absent
)

echo.
echo    You are in Rachel's bedroom.
goto timeDisplay
:rachelsBedroom_cont
echo      ^> You are alone.
echo      ^> A glass of milk is spilled on Rachel's open
echo        laptop. Her desk chair has been knocked over.
echo      ^> From here you can return to the hall.
if %turnsPassed% GTR 5 (
if "%looked%" == "no" (
echo.
echo      ^> ^(Try looking around.^)
)
)
echo.
echo   [What do you do?]
set input=noInput
set /p input=
set /a turnsPassed=%turnsPassed% + 1
if "%input%" == "look" goto look
if "%input%" == "look around" goto look
if "%input%" == "examine glass" goto examine_milk
if "%input%" == "look at glass" goto examine_milk
if "%input%" == "look glass" goto examine_milk
if "%input%" == "search glass" goto examine_milk
if "%input%" == "check glass" goto examine_milk
if "%input%" == "examine milk" goto examine_milk
if "%input%" == "look at milk" goto examine_milk
if "%input%" == "look milk" goto examine_milk
if "%input%" == "search milk" goto examine_milk
if "%input%" == "check milk" goto examine_milk
if "%input%" == "examine glass of milk" goto examine_milk
if "%input%" == "look at glass of milk" goto examine_milk
if "%input%" == "look glass of milk" goto examine_milk
if "%input%" == "search glass of milk" goto examine_milk
if "%input%" == "check glass of milk" goto examine_milk
if "%input%" == "examine milk glass" goto examine_milk
if "%input%" == "look at milk glass" goto examine_milk
if "%input%" == "look milk glass" goto examine_milk
if "%input%" == "search milk glass" goto examine_milk
if "%input%" == "check milk glass" goto examine_milk
if "%input%" == "examine spilled milk" goto examine_milk
if "%input%" == "look at spilled milk" goto examine_milk
if "%input%" == "look spilled milk" goto examine_milk
if "%input%" == "search spilled milk" goto examine_milk
if "%input%" == "check spilled milk" goto examine_milk
if "%input%" == "examine spilled milk glass" goto examine_milk
if "%input%" == "look at spilled milk glass" goto examine_milk
if "%input%" == "look spilled milk glass" goto examine_milk
if "%input%" == "search spilled milk glass" goto examine_milk
if "%input%" == "check spilled milk glass" goto examine_milk
if "%input%" == "examine spilled glass" goto examine_milk
if "%input%" == "look at spilled glass" goto examine_milk
if "%input%" == "look spilled glass" goto examine_milk
if "%input%" == "search spilled glass" goto examine_milk
if "%input%" == "check spilled glass" goto examine_milk
if "%input%" == "examine spilled glass of milk" goto examine_milk
if "%input%" == "look at spilled glass of milk" goto examine_milk
if "%input%" == "look spilled glass of milk" goto examine_milk
if "%input%" == "search spilled glass of milk" goto examine_milk
if "%input%" == "check spilled glass of milk" goto examine_milk
if "%input%" == "milk" goto examine_milk
if "%input%" == "glass" goto examine_milk
if "%input%" == "glass of milk" goto examine_milk
if "%input%" == "milk glass" goto examine_milk
if "%input%" == "spilled milk" goto examine_milk
if "%input%" == "spilled milk glass" goto examine_milk
if "%input%" == "spilled glass of milk" goto examine_milk
if "%input%" == "spilled glass" goto examine_milk
if "%input%" == "examine computer" goto examine_rachelsLaptop
if "%input%" == "look at computer" goto examine_rachelsLaptop
if "%input%" == "look computer" goto examine_rachelsLaptop
if "%input%" == "search computer" goto examine_rachelsLaptop
if "%input%" == "check computer" goto examine_rachelsLaptop
if "%input%" == "computer" goto examine_rachelsLaptop
if "%input%" == "examine rachels computer" goto examine_rachelsLaptop
if "%input%" == "look at rachels computer" goto examine_rachelsLaptop
if "%input%" == "look rachels computer" goto examine_rachelsLaptop
if "%input%" == "search rachels computer" goto examine_rachelsLaptop
if "%input%" == "check rachels computer" goto examine_rachelsLaptop
if "%input%" == "rachels computer" goto examine_rachelsLaptop
if "%input%" == "examine rachel's computer" goto examine_rachelsLaptop
if "%input%" == "look at rachel's computer" goto examine_rachelsLaptop
if "%input%" == "look rachel's computer" goto examine_rachelsLaptop
if "%input%" == "search rachel's computer" goto examine_rachelsLaptop
if "%input%" == "check rachel's computer" goto examine_rachelsLaptop
if "%input%" == "rachel's computer" goto examine_rachelsLaptop
if "%input%" == "examine her computer" goto examine_rachelsLaptop
if "%input%" == "look at her computer" goto examine_rachelsLaptop
if "%input%" == "look her computer" goto examine_rachelsLaptop
if "%input%" == "search her computer" goto examine_rachelsLaptop
if "%input%" == "check her computer" goto examine_rachelsLaptop
if "%input%" == "her computer" goto examine_rachelsLaptop
if "%input%" == "examine laptop" goto examine_rachelsLaptop
if "%input%" == "look at laptop" goto examine_rachelsLaptop
if "%input%" == "look laptop" goto examine_rachelsLaptop
if "%input%" == "search laptop" goto examine_rachelsLaptop
if "%input%" == "check laptop" goto examine_rachelsLaptop
if "%input%" == "laptop" goto examine_rachelsLaptop
if "%input%" == "examine rachels laptop" goto examine_rachelsLaptop
if "%input%" == "look at rachels laptop" goto examine_rachelsLaptop
if "%input%" == "look rachels laptop" goto examine_rachelsLaptop
if "%input%" == "search rachels laptop" goto examine_rachelsLaptop
if "%input%" == "check rachels laptop" goto examine_rachelsLaptop
if "%input%" == "rachels laptop" goto examine_rachelsLaptop
if "%input%" == "examine rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "look at rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "look rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "search rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "check rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "rachel's laptop" goto examine_rachelsLaptop
if "%input%" == "examine her laptop" goto examine_rachelsLaptop
if "%input%" == "look at her laptop" goto examine_rachelsLaptop
if "%input%" == "look her laptop" goto examine_rachelsLaptop
if "%input%" == "search her laptop" goto examine_rachelsLaptop
if "%input%" == "check her laptop" goto examine_rachelsLaptop
if "%input%" == "her laptop" goto examine_rachelsLaptop
if "%input%" == "examine lap top" goto examine_rachelsLaptop
if "%input%" == "look at lap top" goto examine_rachelsLaptop
if "%input%" == "look lap top" goto examine_rachelsLaptop
if "%input%" == "search lap top" goto examine_rachelsLaptop
if "%input%" == "check lap top" goto examine_rachelsLaptop
if "%input%" == "lap top" goto examine_rachelsLaptop
if "%input%" == "examine rachels lap top" goto examine_rachelsLaptop
if "%input%" == "look at rachels lap top" goto examine_rachelsLaptop
if "%input%" == "look rachels lap top" goto examine_rachelsLaptop
if "%input%" == "search rachels lap top" goto examine_rachelsLaptop
if "%input%" == "check rachels lap top" goto examine_rachelsLaptop
if "%input%" == "rachels lap top" goto examine_rachelsLaptop
if "%input%" == "examine rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "look at rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "look rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "search rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "check rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "rachel's lap top" goto examine_rachelsLaptop
if "%input%" == "examine her lap top" goto examine_rachelsLaptop
if "%input%" == "look at her lap top" goto examine_rachelsLaptop
if "%input%" == "look her lap top" goto examine_rachelsLaptop
if "%input%" == "search her lap top" goto examine_rachelsLaptop
if "%input%" == "check her lap top" goto examine_rachelsLaptop
if "%input%" == "her lap top" goto examine_rachelsLaptop
if "%input%" == "examine laptop computer" goto examine_rachelsLaptop
if "%input%" == "look at laptop computer" goto examine_rachelsLaptop
if "%input%" == "look laptop computer" goto examine_rachelsLaptop
if "%input%" == "search laptop computer" goto examine_rachelsLaptop
if "%input%" == "check laptop computer" goto examine_rachelsLaptop
if "%input%" == "laptop computer" goto examine_rachelsLaptop
if "%input%" == "examine rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "look at rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "look rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "search rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "check rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "rachels laptop computer" goto examine_rachelsLaptop
if "%input%" == "examine rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "look at rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "look rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "search rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "check rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "rachel's laptop computer" goto examine_rachelsLaptop
if "%input%" == "examine her laptop computer" goto examine_rachelsLaptop
if "%input%" == "look at her laptop computer" goto examine_rachelsLaptop
if "%input%" == "look her laptop computer" goto examine_rachelsLaptop
if "%input%" == "search her laptop computer" goto examine_rachelsLaptop
if "%input%" == "check her laptop computer" goto examine_rachelsLaptop
if "%input%" == "her laptop computer" goto examine_rachelsLaptop
if "%input%" == "examine table" goto examine_rachelsDesk
if "%input%" == "look at table" goto examine_rachelsDesk
if "%input%" == "look table" goto examine_rachelsDesk
if "%input%" == "search table" goto examine_rachelsDesk
if "%input%" == "check table" goto examine_rachelsDesk
if "%input%" == "table" goto examine_rachelsDesk
if "%input%" == "examine desk" goto examine_rachelsDesk
if "%input%" == "look at desk" goto examine_rachelsDesk
if "%input%" == "look desk" goto examine_rachelsDesk
if "%input%" == "search desk" goto examine_rachelsDesk
if "%input%" == "check desk" goto examine_rachelsDesk
if "%input%" == "desk" goto examine_rachelsDesk
if "%input%" == "examine her desk" goto examine_rachelsDesk
if "%input%" == "look at her desk" goto examine_rachelsDesk
if "%input%" == "look her desk" goto examine_rachelsDesk
if "%input%" == "search her desk" goto examine_rachelsDesk
if "%input%" == "check her desk" goto examine_rachelsDesk
if "%input%" == "her desk" goto examine_rachelsDesk
if "%input%" == "examine rachels desk" goto examine_rachelsDesk
if "%input%" == "look at rachels desk" goto examine_rachelsDesk
if "%input%" == "look rachels desk" goto examine_rachelsDesk
if "%input%" == "search rachels desk" goto examine_rachelsDesk
if "%input%" == "check rachels desk" goto examine_rachelsDesk
if "%input%" == "rachels desk" goto examine_rachelsDesk
if "%input%" == "examine rachel's desk" goto examine_rachelsDesk
if "%input%" == "look at rachel's desk" goto examine_rachelsDesk
if "%input%" == "look rachel's desk" goto examine_rachelsDesk
if "%input%" == "search rachel's desk" goto examine_rachelsDesk
if "%input%" == "check rachel's desk" goto examine_rachelsDesk
if "%input%" == "rachel's desk" goto examine_rachelsDesk
if "%input%" == "examine chair" goto examine_rachelsChair
if "%input%" == "look at chair" goto examine_rachelsChair
if "%input%" == "look chair" goto examine_rachelsChair
if "%input%" == "search chair" goto examine_rachelsChair
if "%input%" == "check chair" goto examine_rachelsChair
if "%input%" == "chair" goto examine_rachelsChair
if "%input%" == "examine her chair" goto examine_rachelsChair
if "%input%" == "look at her chair" goto examine_rachelsChair
if "%input%" == "look her chair" goto examine_rachelsChair
if "%input%" == "search her chair" goto examine_rachelsChair
if "%input%" == "check her chair" goto examine_rachelsChair
if "%input%" == "her chair" goto examine_rachelsChair
if "%input%" == "examine rachels chair" goto examine_rachelsChair
if "%input%" == "look at rachels chair" goto examine_rachelsChair
if "%input%" == "look rachels chair" goto examine_rachelsChair
if "%input%" == "search rachels chair" goto examine_rachelsChair
if "%input%" == "check rachels chair" goto examine_rachelsChair
if "%input%" == "rachels chair" goto examine_rachelsChair
if "%input%" == "examine rachel's chair" goto examine_rachelsChair
if "%input%" == "look at rachel's chair" goto examine_rachelsChair
if "%input%" == "look rachel's chair" goto examine_rachelsChair
if "%input%" == "search rachel's chair" goto examine_rachelsChair
if "%input%" == "check rachel's chair" goto examine_rachelsChair
if "%input%" == "rachel's chair" goto examine_rachelsChair
if "%input%" == "examine desk chair" goto examine_rachelsChair
if "%input%" == "look at desk chair" goto examine_rachelsChair
if "%input%" == "look desk chair" goto examine_rachelsChair
if "%input%" == "search desk chair" goto examine_rachelsChair
if "%input%" == "check desk chair" goto examine_rachelsChair
if "%input%" == "desk chair" goto examine_rachelsChair
if "%input%" == "examine her desk chair" goto examine_rachelsChair
if "%input%" == "look at her desk chair" goto examine_rachelsChair
if "%input%" == "look her desk chair" goto examine_rachelsChair
if "%input%" == "search her desk chair" goto examine_rachelsChair
if "%input%" == "check her desk chair" goto examine_rachelsChair
if "%input%" == "her desk chair" goto examine_rachelsChair
if "%input%" == "examine rachels desk chair" goto examine_rachelsChair
if "%input%" == "look at rachels desk chair" goto examine_rachelsChair
if "%input%" == "look rachels desk chair" goto examine_rachelsChair
if "%input%" == "search rachels desk chair" goto examine_rachelsChair
if "%input%" == "check rachels desk chair" goto examine_rachelsChair
if "%input%" == "rachels desk chair" goto examine_rachelsChair
if "%input%" == "examine rachel's desk chair" goto examine_rachelsChair
if "%input%" == "look at rachel's desk chair" goto examine_rachelsChair
if "%input%" == "look rachel's desk chair" goto examine_rachelsChair
if "%input%" == "search rachel's desk chair" goto examine_rachelsChair
if "%input%" == "check rachel's desk chair" goto examine_rachelsChair
if "%input%" == "rachel's desk chair" goto examine_rachelsChair
if "%input%" == "examine bed" goto examine_rachelsBed
if "%input%" == "look at bed" goto examine_rachelsBed
if "%input%" == "look bed" goto examine_rachelsBed
if "%input%" == "search bed" goto examine_rachelsBed
if "%input%" == "check bed" goto examine_rachelsBed
if "%input%" == "bed" goto examine_rachelsBed
if "%input%" == "examine her bed" goto examine_rachelsBed
if "%input%" == "look at her bed" goto examine_rachelsBed
if "%input%" == "look her bed" goto examine_rachelsBed
if "%input%" == "search her bed" goto examine_rachelsBed
if "%input%" == "check her bed" goto examine_rachelsBed
if "%input%" == "her bed" goto examine_rachelsBed
if "%input%" == "examine rachels bed" goto examine_rachelsBed
if "%input%" == "look at rachels bed" goto examine_rachelsBed
if "%input%" == "look rachels bed" goto examine_rachelsBed
if "%input%" == "search rachels bed" goto examine_rachelsBed
if "%input%" == "check rachels bed" goto examine_rachelsBed
if "%input%" == "rachels bed" goto examine_rachelsBed
if "%input%" == "examine rachel's bed" goto examine_rachelsBed
if "%input%" == "look at rachel's bed" goto examine_rachelsBed
if "%input%" == "look rachel's bed" goto examine_rachelsBed
if "%input%" == "search rachel's bed" goto examine_rachelsBed
if "%input%" == "check rachel's bed" goto examine_rachelsBed
if "%input%" == "rachel's bed" goto examine_rachelsBed
if "%input%" == "go to sleep" goto use_rachelsBed
if "%input%" == "take nap" goto use_rachelsBed
if "%input%" == "sleep" goto use_rachelsBed
if "%input%" == "nap" goto use_rachelsBed
if "%input%" == "rest" goto use_rachelsBed
if "%input%" == "use her bed" goto use_rachelsBed
if "%input%" == "get in her bed" goto use_rachelsBed
if "%input%" == "get into her bed" goto use_rachelsBed
if "%input%" == "go to sleep in her bed" goto use_rachelsBed
if "%input%" == "take nap in her bed" goto use_rachelsBed
if "%input%" == "sleep in her bed" goto use_rachelsBed
if "%input%" == "nap in her bed" goto use_rachelsBed
if "%input%" == "rest in her bed" goto use_rachelsBed
if "%onput%" == "get on her bed" goto use_rachelsBed
if "%onput%" == "get onto her bed" goto use_rachelsBed
if "%onput%" == "go to sleep on her bed" goto use_rachelsBed
if "%onput%" == "take nap on her bed" goto use_rachelsBed
if "%onput%" == "sleep on her bed" goto use_rachelsBed
if "%onput%" == "nap on her bed" goto use_rachelsBed
if "%onput%" == "rest on her bed" goto use_rachelsBed
if "%input%" == "use bed" goto use_rachelsBed
if "%input%" == "get in bed" goto use_rachelsBed
if "%input%" == "get into bed" goto use_rachelsBed
if "%input%" == "go to sleep in bed" goto use_rachelsBed
if "%input%" == "take nap in bed" goto use_rachelsBed
if "%input%" == "sleep in bed" goto use_rachelsBed
if "%input%" == "nap in bed" goto use_rachelsBed
if "%input%" == "rest in bed" goto use_rachelsBed
if "%input%" == "get on bed" goto use_rachelsBed
if "%input%" == "get onto bed" goto use_rachelsBed
if "%input%" == "go to sleep on bed" goto use_rachelsBed
if "%input%" == "take nap on bed" goto use_rachelsBed
if "%input%" == "sleep on bed" goto use_rachelsBed
if "%input%" == "nap on bed" goto use_rachelsBed
if "%input%" == "rest on bed" goto use_rachelsBed
if "%input%" == "use rachels bed" goto use_rachelsBed
if "%input%" == "get in rachels bed" goto use_rachelsBed
if "%input%" == "get into rachels bed" goto use_rachelsBed
if "%input%" == "go to sleep in rachels bed" goto use_rachelsBed
if "%input%" == "take nap in rachels bed" goto use_rachelsBed
if "%input%" == "sleep in rachels bed" goto use_rachelsBed
if "%input%" == "nap in rachels bed" goto use_rachelsBed
if "%input%" == "rest in rachels bed" goto use_rachelsBed
if "%input%" == "get on rachels bed" goto use_rachelsBed
if "%input%" == "get onto rachels bed" goto use_rachelsBed
if "%input%" == "go to sleep on rachels bed" goto use_rachelsBed
if "%input%" == "take nap on rachels bed" goto use_rachelsBed
if "%input%" == "sleep on rachels bed" goto use_rachelsBed
if "%input%" == "nap on rachels bed" goto use_rachelsBed
if "%input%" == "rest on rachels bed" goto use_rachelsBed
if "%input%" == "use rachel's bed" goto use_rachelsBed
if "%input%" == "get in rachel's bed" goto use_rachelsBed
if "%input%" == "get into rachel's bed" goto use_rachelsBed
if "%input%" == "go to sleep in rachel's bed" goto use_rachelsBed
if "%input%" == "take nap in rachel's bed" goto use_rachelsBed
if "%input%" == "sleep in rachel's bed" goto use_rachelsBed
if "%input%" == "nap in rachel's bed" goto use_rachelsBed
if "%input%" == "rest in rachel's bed" goto use_rachelsBed
if "%input%" == "get on rachel's bed" goto use_rachelsBed
if "%input%" == "get onto rachel's bed" goto use_rachelsBed
if "%input%" == "go to sleep on rachel's bed" goto use_rachelsBed
if "%input%" == "take nap on rachel's bed" goto use_rachelsBed
if "%input%" == "sleep on rachel's bed" goto use_rachelsBed
if "%input%" == "nap on rachel's bed" goto use_rachelsBed
if "%input%" == "rest on rachel's bed" goto use_rachelsBed
if "%input%" == "lie down" goto use_rachelsBed
if "%input%" == "lay down" goto use_rachelsBed
if "%input%" == "lie down her bed" goto use_rachelsBed
if "%input%" == "lay down her bed" goto use_rachelsBed
if "%input%" == "lie down on her bed" goto use_rachelsBed
if "%input%" == "lay down on her bed" goto use_rachelsBed
if "%input%" == "lie down in her bed" goto use_rachelsBed
if "%input%" == "lay down in her bed" goto use_rachelsBed
if "%input%" == "lie down bed" goto use_rachelsBed
if "%input%" == "lay down bed" goto use_rachelsBed
if "%input%" == "lie down on bed" goto use_rachelsBed
if "%input%" == "lay down on bed" goto use_rachelsBed
if "%input%" == "lie down in bed" goto use_rachelsBed
if "%input%" == "lay down in bed" goto use_rachelsBed
if "%input%" == "lie down rachels bed" goto use_rachelsBed
if "%input%" == "lay down rachels bed" goto use_rachelsBed
if "%input%" == "lie down on rachels bed" goto use_rachelsBed
if "%input%" == "lay down on rachels bed" goto use_rachelsBed
if "%input%" == "lie down in rachels bed" goto use_rachelsBed
if "%input%" == "lay down in rachels bed" goto use_rachelsBed
if "%input%" == "lie down rachel's bed" goto use_rachelsBed
if "%input%" == "lay down rachel's bed" goto use_rachelsBed
if "%input%" == "lie down on rachel's bed" goto use_rachelsBed
if "%input%" == "lay down on rachel's bed" goto use_rachelsBed
if "%input%" == "lie down in rachel's bed" goto use_rachelsBed
if "%input%" == "lay down in rachel's bed" goto use_rachelsBed
if "%input%" == "take milk" goto youDontNeedToTakeThat
if "%input%" == "grab milk" goto youDontNeedToTakeThat
if "%input%" == "pick up milk" goto youDontNeedToTakeThat
if "%input%" == "pick milk up" goto youDontNeedToTakeThat
if "%input%" == "steal milk" goto youDontNeedToTakeThat
if "%input%" == "take glass" goto youDontNeedToTakeThat
if "%input%" == "grab glass" goto youDontNeedToTakeThat
if "%input%" == "pick up glass" goto youDontNeedToTakeThat
if "%input%" == "pick glass up" goto youDontNeedToTakeThat
if "%input%" == "steal glass" goto youDontNeedToTakeThat
if "%input%" == "take glass of milk" goto youDontNeedToTakeThat
if "%input%" == "grab glass of milk" goto youDontNeedToTakeThat
if "%input%" == "pick up glass of milk" goto youDontNeedToTakeThat
if "%input%" == "pick glass of milk up" goto youDontNeedToTakeThat
if "%input%" == "steal glass of milk" goto youDontNeedToTakeThat
if "%input%" == "take milk glass" goto youDontNeedToTakeThat
if "%input%" == "grab milk glass" goto youDontNeedToTakeThat
if "%input%" == "pick up milk glass" goto youDontNeedToTakeThat
if "%input%" == "pick milk glass up" goto youDontNeedToTakeThat
if "%input%" == "steal milk glass" goto youDontNeedToTakeThat
if "%input%" == "take computer" goto youDontNeedToTakeThat
if "%input%" == "grab computer" goto youDontNeedToTakeThat
if "%input%" == "pick up computer" goto youDontNeedToTakeThat
if "%input%" == "pick computer up" goto youDontNeedToTakeThat
if "%input%" == "steal computer" goto youDontNeedToTakeThat
if "%input%" == "take laptop" goto youDontNeedToTakeThat
if "%input%" == "grab laptop" goto youDontNeedToTakeThat
if "%input%" == "pick up laptop" goto youDontNeedToTakeThat
if "%input%" == "pick laptop up" goto youDontNeedToTakeThat
if "%input%" == "steal laptop" goto youDontNeedToTakeThat
if "%input%" == "take lap top" goto youDontNeedToTakeThat
if "%input%" == "grab lap top" goto youDontNeedToTakeThat
if "%input%" == "pick up lap top" goto youDontNeedToTakeThat
if "%input%" == "pick lap top up" goto youDontNeedToTakeThat
if "%input%" == "steal lap top" goto youDontNeedToTakeThat
if "%input%" == "take laptop computer" goto youDontNeedToTakeThat
if "%input%" == "grab laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick up laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick laptop computer up" goto youDontNeedToTakeThat
if "%input%" == "steal laptop computer" goto youDontNeedToTakeThat
if "%input%" == "take her computer" goto youDontNeedToTakeThat
if "%input%" == "grab her computer" goto youDontNeedToTakeThat
if "%input%" == "pick up her computer" goto youDontNeedToTakeThat
if "%input%" == "pick her computer up" goto youDontNeedToTakeThat
if "%input%" == "steal her computer" goto youDontNeedToTakeThat
if "%input%" == "take her laptop" goto youDontNeedToTakeThat
if "%input%" == "grab her laptop" goto youDontNeedToTakeThat
if "%input%" == "pick up her laptop" goto youDontNeedToTakeThat
if "%input%" == "pick her laptop up" goto youDontNeedToTakeThat
if "%input%" == "steal her laptop" goto youDontNeedToTakeThat
if "%input%" == "take her lap top" goto youDontNeedToTakeThat
if "%input%" == "grab her lap top" goto youDontNeedToTakeThat
if "%input%" == "pick up her lap top" goto youDontNeedToTakeThat
if "%input%" == "pick her lap top up" goto youDontNeedToTakeThat
if "%input%" == "steal her lap top" goto youDontNeedToTakeThat
if "%input%" == "take her laptop computer" goto youDontNeedToTakeThat
if "%input%" == "grab her laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick up her laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick her laptop computer up" goto youDontNeedToTakeThat
if "%input%" == "steal her laptop computer" goto youDontNeedToTakeThat
if "%input%" == "take rachels computer" goto youDontNeedToTakeThat
if "%input%" == "grab rachels computer" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels computer" goto youDontNeedToTakeThat
if "%input%" == "pick rachels computer up" goto youDontNeedToTakeThat
if "%input%" == "steal rachels computer" goto youDontNeedToTakeThat
if "%input%" == "take rachels laptop" goto youDontNeedToTakeThat
if "%input%" == "grab rachels laptop" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels laptop" goto youDontNeedToTakeThat
if "%input%" == "pick rachels laptop up" goto youDontNeedToTakeThat
if "%input%" == "steal rachels laptop" goto youDontNeedToTakeThat
if "%input%" == "take rachels lap top" goto youDontNeedToTakeThat
if "%input%" == "grab rachels lap top" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels lap top" goto youDontNeedToTakeThat
if "%input%" == "pick rachels lap top up" goto youDontNeedToTakeThat
if "%input%" == "steal rachels lap top" goto youDontNeedToTakeThat
if "%input%" == "take rachels laptop computer" goto youDontNeedToTakeThat
if "%input%" == "grab rachels laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick rachels laptop computer up" goto youDontNeedToTakeThat
if "%input%" == "steal rachels laptop computer" goto youDontNeedToTakeThat
if "%input%" == "take rachel's computer" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's computer" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's computer" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's computer up" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's computer" goto youDontNeedToTakeThat
if "%input%" == "take rachel's laptop" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's laptop" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's laptop" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's laptop up" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's laptop" goto youDontNeedToTakeThat
if "%input%" == "take rachel's lap top" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's lap top" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's lap top" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's lap top up" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's lap top" goto youDontNeedToTakeThat
if "%input%" == "take rachel's laptop computer" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's laptop computer" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's laptop computer up" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's laptop computer" goto youDontNeedToTakeThat
if "%input%" == "take chair" goto youDontNeedToTakeThat
if "%input%" == "grab chair" goto youDontNeedToTakeThat
if "%input%" == "pick up chair" goto youDontNeedToTakeThat
if "%input%" == "pick chair chair" goto youDontNeedToTakeThat
if "%input%" == "steal chair" goto youDontNeedToTakeThat
if "%input%" == "take her chair" goto youDontNeedToTakeThat
if "%input%" == "grab her chair" goto youDontNeedToTakeThat
if "%input%" == "pick up her chair" goto youDontNeedToTakeThat
if "%input%" == "pick her chair her chair" goto youDontNeedToTakeThat
if "%input%" == "steal her chair" goto youDontNeedToTakeThat
if "%input%" == "take rachels chair" goto youDontNeedToTakeThat
if "%input%" == "grab rachels chair" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels chair" goto youDontNeedToTakeThat
if "%input%" == "pick rachels chair rachels chair" goto youDontNeedToTakeThat
if "%input%" == "steal rachels chair" goto youDontNeedToTakeThat
if "%input%" == "take rachel's chair" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's chair" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's chair" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's chair rachel's chair" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's chair" goto youDontNeedToTakeThat
if "%input%" == "take desk chair" goto youDontNeedToTakeThat
if "%input%" == "grab desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick up desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick desk chair desk chair" goto youDontNeedToTakeThat
if "%input%" == "steal desk chair" goto youDontNeedToTakeThat
if "%input%" == "take her desk chair" goto youDontNeedToTakeThat
if "%input%" == "grab her desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick up her desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick her desk chair her desk chair" goto youDontNeedToTakeThat
if "%input%" == "steal her desk chair" goto youDontNeedToTakeThat
if "%input%" == "take rachels desk chair" goto youDontNeedToTakeThat
if "%input%" == "grab rachels desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick up rachels desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick rachels desk chair rachels desk chair" goto youDontNeedToTakeThat
if "%input%" == "steal rachels desk chair" goto youDontNeedToTakeThat
if "%input%" == "take rachel's desk chair" goto youDontNeedToTakeThat
if "%input%" == "grab rachel's desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick up rachel's desk chair" goto youDontNeedToTakeThat
if "%input%" == "pick rachel's desk chair rachel's desk chair" goto youDontNeedToTakeThat
if "%input%" == "steal rachel's desk chair" goto youDontNeedToTakeThat
if "%input%" == "clean milk" goto cleanMilk
if "%input%" == "clean up milk" goto cleanMilk
if "%input%" == "clean spill" goto cleanMilk
if "%input%" == "clean up spill" goto cleanMilk
if "%input%" == "clean milk up" goto cleanMilk
if "%input%" == "clean spill up" goto cleanMilk
if "%input%" == "clean spilled milk" goto cleanMilk
if "%input%" == "clean up spilled milk" goto cleanMilk
if "%input%" == "clean spilled milk up" goto cleanMilk
if "%input%" == "clean" goto cleanMilk
if "%input%" == "clean it" goto cleanMilk
if "%input%" == "wipe milk" goto cleanMilk
if "%input%" == "wipe up milk" goto cleanMilk
if "%input%" == "wipe spill" goto cleanMilk
if "%input%" == "wipe up spill" goto cleanMilk
if "%input%" == "wipe milk up" goto cleanMilk
if "%input%" == "wipe spill up" goto cleanMilk
if "%input%" == "wipe spilled milk" goto cleanMilk
if "%input%" == "wipe up spilled milk" goto cleanMilk
if "%input%" == "wipe spilled milk up" goto cleanMilk
if "%input%" == "clean" goto cleanMilk
if "%input%" == "wipe it" goto cleanMilk
if "%input%" == "use keyboard" goto use_rachelsComputer
if "%input%" == "type on keyboard " goto use_rachelsComputer
if "%input%" == "use key board" goto use_rachelsComputer
if "%input%" == "type on key board " goto use_rachelsComputer
if "%input%" == "use laptop" goto use_rachelsComputer
if "%input%" == "turn on laptop" goto use_rachelsComputer
if "%input%" == "turn laptop on" goto use_rachelsComputer
if "%input%" == "boot up laptop" goto use_rachelsComputer
if "%input%" == "boot laptop up" goto use_rachelsComputer
if "%input%" == "laptop on" goto use_rachelsComputer
if "%input%" == "log into laptop" goto use_rachelsComputer
if "%input%" == "log onto laptop" goto use_rachelsComputer
if "%input%" == "log in to laptop" goto use_rachelsComputer
if "%input%" == "log on to laptop" goto use_rachelsComputer
if "%input%" == "look up porn on laptop" goto use_rachelsComputer
if "%input%" == "look at porn on laptop" goto use_rachelsComputer
if "%input%" == "look up porn with laptop" goto use_rachelsComputer
if "%input%" == "look at porn with laptop" goto use_rachelsComputer
if "%input%" == "use lap top" goto use_rachelsComputer
if "%input%" == "turn on lap top" goto use_rachelsComputer
if "%input%" == "turn lap top on" goto use_rachelsComputer
if "%input%" == "boot up lap top" goto use_rachelsComputer
if "%input%" == "boot lap top up" goto use_rachelsComputer
if "%input%" == "lap top on" goto use_rachelsComputer
if "%input%" == "log into lap top" goto use_rachelsComputer
if "%input%" == "log onto lap top" goto use_rachelsComputer
if "%input%" == "log in to lap top" goto use_rachelsComputer
if "%input%" == "log on to lap top" goto use_rachelsComputer
if "%input%" == "look up porn on lap top" goto use_rachelsComputer
if "%input%" == "look at porn on lap top" goto use_rachelsComputer
if "%input%" == "look up porn with lap top" goto use_rachelsComputer
if "%input%" == "look at porn with lap top" goto use_rachelsComputer
if "%input%" == "use computer" goto use_rachelsComputer
if "%input%" == "turn on computer" goto use_rachelsComputer
if "%input%" == "turn computer on" goto use_rachelsComputer
if "%input%" == "boot up computer" goto use_rachelsComputer
if "%input%" == "boot computer up" goto use_rachelsComputer
if "%input%" == "computer on" goto use_rachelsComputer
if "%input%" == "log into computer" goto use_rachelsComputer
if "%input%" == "log onto computer" goto use_rachelsComputer
if "%input%" == "log in to computer" goto use_rachelsComputer
if "%input%" == "log on to computer" goto use_rachelsComputer
if "%input%" == "look up porn on computer" goto use_rachelsComputer
if "%input%" == "look at porn on computer" goto use_rachelsComputer
if "%input%" == "look up porn with computer" goto use_rachelsComputer
if "%input%" == "look at porn with computer" goto use_rachelsComputer
if "%input%" == "use laptop computer" goto use_rachelsComputer
if "%input%" == "turn on laptop computer" goto use_rachelsComputer
if "%input%" == "turn laptop computer on" goto use_rachelsComputer
if "%input%" == "boot up laptop computer" goto use_rachelsComputer
if "%input%" == "boot laptop computer up" goto use_rachelsComputer
if "%input%" == "laptop computer on" goto use_rachelsComputer
if "%input%" == "log into laptop computer" goto use_rachelsComputer
if "%input%" == "log onto laptop computer" goto use_rachelsComputer
if "%input%" == "log in to laptop computer" goto use_rachelsComputer
if "%input%" == "log on to laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn on laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn on laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn with laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn with laptop computer" goto use_rachelsComputer
if "%input%" == "use her laptop" goto use_rachelsComputer
if "%input%" == "turn on her laptop" goto use_rachelsComputer
if "%input%" == "turn her laptop on" goto use_rachelsComputer
if "%input%" == "boot up her laptop" goto use_rachelsComputer
if "%input%" == "boot her laptop up" goto use_rachelsComputer
if "%input%" == "her laptop on" goto use_rachelsComputer
if "%input%" == "log into her laptop" goto use_rachelsComputer
if "%input%" == "log onto her laptop" goto use_rachelsComputer
if "%input%" == "log in to her laptop" goto use_rachelsComputer
if "%input%" == "log on to her laptop" goto use_rachelsComputer
if "%input%" == "look up porn on her laptop" goto use_rachelsComputer
if "%input%" == "look at porn on her laptop" goto use_rachelsComputer
if "%input%" == "look up porn with her laptop" goto use_rachelsComputer
if "%input%" == "look at porn with her laptop" goto use_rachelsComputer
if "%input%" == "use her lap top" goto use_rachelsComputer
if "%input%" == "turn on her lap top" goto use_rachelsComputer
if "%input%" == "turn her lap top on" goto use_rachelsComputer
if "%input%" == "boot up her lap top" goto use_rachelsComputer
if "%input%" == "boot her lap top up" goto use_rachelsComputer
if "%input%" == "her lap top on" goto use_rachelsComputer
if "%input%" == "log into her lap top" goto use_rachelsComputer
if "%input%" == "log onto her lap top" goto use_rachelsComputer
if "%input%" == "log in to her lap top" goto use_rachelsComputer
if "%input%" == "log on to her lap top" goto use_rachelsComputer
if "%input%" == "look up porn on her lap top" goto use_rachelsComputer
if "%input%" == "look at porn on her lap top" goto use_rachelsComputer
if "%input%" == "look up porn with her lap top" goto use_rachelsComputer
if "%input%" == "look at porn with her lap top" goto use_rachelsComputer
if "%input%" == "use her computer" goto use_rachelsComputer
if "%input%" == "turn on her computer" goto use_rachelsComputer
if "%input%" == "turn her computer on" goto use_rachelsComputer
if "%input%" == "boot up her computer" goto use_rachelsComputer
if "%input%" == "boot her computer up" goto use_rachelsComputer
if "%input%" == "her computer on" goto use_rachelsComputer
if "%input%" == "log into her computer" goto use_rachelsComputer
if "%input%" == "log onto her computer" goto use_rachelsComputer
if "%input%" == "log in to her computer" goto use_rachelsComputer
if "%input%" == "log on to her computer" goto use_rachelsComputer
if "%input%" == "look up porn on her computer" goto use_rachelsComputer
if "%input%" == "look at porn on her computer" goto use_rachelsComputer
if "%input%" == "look up porn with her computer" goto use_rachelsComputer
if "%input%" == "look at porn with her computer" goto use_rachelsComputer
if "%input%" == "use her laptop computer" goto use_rachelsComputer
if "%input%" == "turn on her laptop computer" goto use_rachelsComputer
if "%input%" == "turn her laptop computer on" goto use_rachelsComputer
if "%input%" == "boot up her laptop computer" goto use_rachelsComputer
if "%input%" == "boot her laptop computer up" goto use_rachelsComputer
if "%input%" == "her laptop computer on" goto use_rachelsComputer
if "%input%" == "log into her laptop computer" goto use_rachelsComputer
if "%input%" == "log onto her laptop computer" goto use_rachelsComputer
if "%input%" == "log in to her laptop computer" goto use_rachelsComputer
if "%input%" == "log on to her laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn on her laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn on her laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn with her laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn with her laptop computer" goto use_rachelsComputer
if "%input%" == "use rachels laptop" goto use_rachelsComputer
if "%input%" == "turn on rachels laptop" goto use_rachelsComputer
if "%input%" == "turn rachels laptop on" goto use_rachelsComputer
if "%input%" == "boot up rachels laptop" goto use_rachelsComputer
if "%input%" == "boot rachels laptop up" goto use_rachelsComputer
if "%input%" == "rachels laptop on" goto use_rachelsComputer
if "%input%" == "log into rachels laptop" goto use_rachelsComputer
if "%input%" == "log onto rachels laptop" goto use_rachelsComputer
if "%input%" == "log in to rachels laptop" goto use_rachelsComputer
if "%input%" == "log on to rachels laptop" goto use_rachelsComputer
if "%input%" == "look up porn on rachels laptop" goto use_rachelsComputer
if "%input%" == "look at porn on rachels laptop" goto use_rachelsComputer
if "%input%" == "look up porn with rachels laptop" goto use_rachelsComputer
if "%input%" == "look at porn with rachels laptop" goto use_rachelsComputer
if "%input%" == "use rachels lap top" goto use_rachelsComputer
if "%input%" == "turn on rachels lap top" goto use_rachelsComputer
if "%input%" == "turn rachels lap top on" goto use_rachelsComputer
if "%input%" == "boot up rachels lap top" goto use_rachelsComputer
if "%input%" == "boot rachels lap top up" goto use_rachelsComputer
if "%input%" == "rachels lap top on" goto use_rachelsComputer
if "%input%" == "log into rachels lap top" goto use_rachelsComputer
if "%input%" == "log onto rachels lap top" goto use_rachelsComputer
if "%input%" == "log in to rachels lap top" goto use_rachelsComputer
if "%input%" == "log on to rachels lap top" goto use_rachelsComputer
if "%input%" == "look up porn on rachels lap top" goto use_rachelsComputer
if "%input%" == "look at porn on rachels lap top" goto use_rachelsComputer
if "%input%" == "look up porn with rachels lap top" goto use_rachelsComputer
if "%input%" == "look at porn with rachels lap top" goto use_rachelsComputer
if "%input%" == "use rachels computer" goto use_rachelsComputer
if "%input%" == "turn on rachels computer" goto use_rachelsComputer
if "%input%" == "turn rachels computer on" goto use_rachelsComputer
if "%input%" == "boot up rachels computer" goto use_rachelsComputer
if "%input%" == "boot rachels computer up" goto use_rachelsComputer
if "%input%" == "rachels computer on" goto use_rachelsComputer
if "%input%" == "log into rachels computer" goto use_rachelsComputer
if "%input%" == "log onto rachels computer" goto use_rachelsComputer
if "%input%" == "log in to rachels computer" goto use_rachelsComputer
if "%input%" == "log on to rachels computer" goto use_rachelsComputer
if "%input%" == "look up porn on rachels computer" goto use_rachelsComputer
if "%input%" == "look at porn on rachels computer" goto use_rachelsComputer
if "%input%" == "look up porn with rachels computer" goto use_rachelsComputer
if "%input%" == "look at porn with rachels computer" goto use_rachelsComputer
if "%input%" == "use rachels laptop computer" goto use_rachelsComputer
if "%input%" == "turn on rachels laptop computer" goto use_rachelsComputer
if "%input%" == "turn rachels laptop computer on" goto use_rachelsComputer
if "%input%" == "boot up rachels laptop computer" goto use_rachelsComputer
if "%input%" == "boot rachels laptop computer up" goto use_rachelsComputer
if "%input%" == "rachels laptop computer on" goto use_rachelsComputer
if "%input%" == "log into rachels laptop computer" goto use_rachelsComputer
if "%input%" == "log onto rachels laptop computer" goto use_rachelsComputer
if "%input%" == "log in to rachels laptop computer" goto use_rachelsComputer
if "%input%" == "log on to rachels laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn on rachels laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn on rachels laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn with rachels laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn with rachels laptop computer" goto use_rachelsComputer
if "%input%" == "use rachel's laptop" goto use_rachelsComputer
if "%input%" == "turn on rachel's laptop" goto use_rachelsComputer
if "%input%" == "turn rachel's laptop on" goto use_rachelsComputer
if "%input%" == "boot up rachel's laptop" goto use_rachelsComputer
if "%input%" == "boot rachel's laptop up" goto use_rachelsComputer
if "%input%" == "rachel's laptop on" goto use_rachelsComputer
if "%input%" == "log into rachel's laptop" goto use_rachelsComputer
if "%input%" == "log onto rachel's laptop" goto use_rachelsComputer
if "%input%" == "log in to rachel's laptop" goto use_rachelsComputer
if "%input%" == "log on to rachel's laptop" goto use_rachelsComputer
if "%input%" == "look up porn on rachel's laptop" goto use_rachelsComputer
if "%input%" == "look at porn on rachel's laptop" goto use_rachelsComputer
if "%input%" == "look up porn with rachel's laptop" goto use_rachelsComputer
if "%input%" == "look at porn with rachel's laptop" goto use_rachelsComputer
if "%input%" == "use rachel's lap top" goto use_rachelsComputer
if "%input%" == "turn on rachel's lap top" goto use_rachelsComputer
if "%input%" == "turn rachel's lap top on" goto use_rachelsComputer
if "%input%" == "boot up rachel's lap top" goto use_rachelsComputer
if "%input%" == "boot rachel's lap top up" goto use_rachelsComputer
if "%input%" == "rachel's lap top on" goto use_rachelsComputer
if "%input%" == "log into rachel's lap top" goto use_rachelsComputer
if "%input%" == "log onto rachel's lap top" goto use_rachelsComputer
if "%input%" == "log in to rachel's lap top" goto use_rachelsComputer
if "%input%" == "log on to rachel's lap top" goto use_rachelsComputer
if "%input%" == "look up porn on rachel's lap top" goto use_rachelsComputer
if "%input%" == "look at porn on rachel's lap top" goto use_rachelsComputer
if "%input%" == "look up porn with rachel's lap top" goto use_rachelsComputer
if "%input%" == "look at porn with rachel's lap top" goto use_rachelsComputer
if "%input%" == "use rachel's computer" goto use_rachelsComputer
if "%input%" == "turn on rachel's computer" goto use_rachelsComputer
if "%input%" == "turn rachel's computer on" goto use_rachelsComputer
if "%input%" == "boot up rachel's computer" goto use_rachelsComputer
if "%input%" == "boot rachel's computer up" goto use_rachelsComputer
if "%input%" == "rachel's computer on" goto use_rachelsComputer
if "%input%" == "log into rachel's computer" goto use_rachelsComputer
if "%input%" == "log onto rachel's computer" goto use_rachelsComputer
if "%input%" == "log in to rachel's computer" goto use_rachelsComputer
if "%input%" == "log on to rachel's computer" goto use_rachelsComputer
if "%input%" == "look up porn on rachel's computer" goto use_rachelsComputer
if "%input%" == "look at porn on rachel's computer" goto use_rachelsComputer
if "%input%" == "look up porn with rachel's computer" goto use_rachelsComputer
if "%input%" == "look at porn with rachel's computer" goto use_rachelsComputer
if "%input%" == "use rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "turn on rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "turn rachel's laptop computer on" goto use_rachelsComputer
if "%input%" == "boot up rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "boot rachel's laptop computer up" goto use_rachelsComputer
if "%input%" == "rachel's laptop computer on" goto use_rachelsComputer
if "%input%" == "log into rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "log onto rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "log in to rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "log on to rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn on rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn on rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "look up porn with rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "look at porn with rachel's laptop computer" goto use_rachelsComputer
if "%input%" == "look for laptop charger" goto lookForRachelsCharger
if "%input%" == "look laptop charger" goto lookForRachelsCharger
if "%input%" == "find laptop charger" goto lookForRachelsCharger
if "%input%" == "look around for laptop charger" goto lookForRachelsCharger
if "%input%" == "check for laptop charger" goto lookForRachelsCharger
if "%input%" == "search for laptop charger" goto lookForRachelsCharger
if "%input%" == "search laptop charger" goto lookForRachelsCharger
if "%input%" == "look for lap top charger" goto lookForRachelsCharger
if "%input%" == "look lap top charger" goto lookForRachelsCharger
if "%input%" == "find lap top charger" goto lookForRachelsCharger
if "%input%" == "look around for lap top charger" goto lookForRachelsCharger
if "%input%" == "check for lap top charger" goto lookForRachelsCharger
if "%input%" == "search for lap top charger" goto lookForRachelsCharger
if "%input%" == "search lap top charger" goto lookForRachelsCharger
if "%input%" == "look for computer charger" goto lookForRachelsCharger
if "%input%" == "look computer charger" goto lookForRachelsCharger
if "%input%" == "find computer charger" goto lookForRachelsCharger
if "%input%" == "look around for computer charger" goto lookForRachelsCharger
if "%input%" == "check for computer charger" goto lookForRachelsCharger
if "%input%" == "search for computer charger" goto lookForRachelsCharger
if "%input%" == "search computer charger" goto lookForRachelsCharger
if "%input%" == "look for charger" goto lookForRachelsCharger
if "%input%" == "look charger" goto lookForRachelsCharger
if "%input%" == "find charger" goto lookForRachelsCharger
if "%input%" == "look around for charger" goto lookForRachelsCharger
if "%input%" == "check for charger" goto lookForRachelsCharger
if "%input%" == "search for charger" goto lookForRachelsCharger
if "%input%" == "search charger" goto lookForRachelsCharger
if "%input%" == "look for her laptop charger" goto lookForRachelsCharger
if "%input%" == "look her laptop charger" goto lookForRachelsCharger
if "%input%" == "find her laptop charger" goto lookForRachelsCharger
if "%input%" == "look around for her laptop charger" goto lookForRachelsCharger
if "%input%" == "check for her laptop charger" goto lookForRachelsCharger
if "%input%" == "search for her laptop charger" goto lookForRachelsCharger
if "%input%" == "search her laptop charger" goto lookForRachelsCharger
if "%input%" == "look for her lap top charger" goto lookForRachelsCharger
if "%input%" == "look her lap top charger" goto lookForRachelsCharger
if "%input%" == "find her lap top charger" goto lookForRachelsCharger
if "%input%" == "look around for her lap top charger" goto lookForRachelsCharger
if "%input%" == "check for her lap top charger" goto lookForRachelsCharger
if "%input%" == "search for her lap top charger" goto lookForRachelsCharger
if "%input%" == "search her lap top charger" goto lookForRachelsCharger
if "%input%" == "look for her computer charger" goto lookForRachelsCharger
if "%input%" == "look her computer charger" goto lookForRachelsCharger
if "%input%" == "find her computer charger" goto lookForRachelsCharger
if "%input%" == "look around for her computer charger" goto lookForRachelsCharger
if "%input%" == "check for her computer charger" goto lookForRachelsCharger
if "%input%" == "search for her computer charger" goto lookForRachelsCharger
if "%input%" == "search her computer charger" goto lookForRachelsCharger
if "%input%" == "look for her charger" goto lookForRachelsCharger
if "%input%" == "look her charger" goto lookForRachelsCharger
if "%input%" == "find her charger" goto lookForRachelsCharger
if "%input%" == "look around for her charger" goto lookForRachelsCharger
if "%input%" == "check for her charger" goto lookForRachelsCharger
if "%input%" == "search for her charger" goto lookForRachelsCharger
if "%input%" == "search her charger" goto lookForRachelsCharger
if "%input%" == "look for rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "look rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "find rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "look around for rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "check for rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "search for rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "search rachels laptop charger" goto lookForRachelsCharger
if "%input%" == "look for rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "look rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "find rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "look around for rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "check for rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "search for rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "search rachels lap top charger" goto lookForRachelsCharger
if "%input%" == "look for rachels computer charger" goto lookForRachelsCharger
if "%input%" == "look rachels computer charger" goto lookForRachelsCharger
if "%input%" == "find rachels computer charger" goto lookForRachelsCharger
if "%input%" == "look around for rachels computer charger" goto lookForRachelsCharger
if "%input%" == "check for rachels computer charger" goto lookForRachelsCharger
if "%input%" == "search for rachels computer charger" goto lookForRachelsCharger
if "%input%" == "search rachels computer charger" goto lookForRachelsCharger
if "%input%" == "look for rachels charger" goto lookForRachelsCharger
if "%input%" == "look rachels charger" goto lookForRachelsCharger
if "%input%" == "find rachels charger" goto lookForRachelsCharger
if "%input%" == "look around for rachels charger" goto lookForRachelsCharger
if "%input%" == "check for rachels charger" goto lookForRachelsCharger
if "%input%" == "search for rachels charger" goto lookForRachelsCharger
if "%input%" == "search rachels charger" goto lookForRachelsCharger
if "%input%" == "look for rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "look rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "find rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "look around for rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "check for rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "search for rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "search rachel's laptop charger" goto lookForRachelsCharger
if "%input%" == "look for rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "look rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "find rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "look around for rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "check for rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "search for rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "search rachel's lap top charger" goto lookForRachelsCharger
if "%input%" == "look for rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "look rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "find rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "look around for rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "check for rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "search for rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "search rachel's computer charger" goto lookForRachelsCharger
if "%input%" == "look for rachel's charger" goto lookForRachelsCharger
if "%input%" == "look rachel's charger" goto lookForRachelsCharger
if "%input%" == "find rachel's charger" goto lookForRachelsCharger
if "%input%" == "look around for rachel's charger" goto lookForRachelsCharger
if "%input%" == "check for rachel's charger" goto lookForRachelsCharger
if "%input%" == "search for rachel's charger" goto lookForRachelsCharger
if "%input%" == "search rachel's charger" goto lookForRachelsCharger
if "%input%" == "leave" goto moveBackToUpstairsHall
if "%input%" == "leave room" goto moveBackToUpstairsHall
if "%input%" == "leave bedroom" goto moveBackToUpstairsHall
if "%input%" == "leave bed room" goto moveBackToUpstairsHall
if "%input%" == "leave her room" goto moveBackToUpstairsHall
if "%input%" == "leave her bedroom" goto moveBackToUpstairsHall
if "%input%" == "leave her bed room" goto moveBackToUpstairsHall
if "%input%" == "leave rachels room" goto moveBackToUpstairsHall
if "%input%" == "leave rachels bedroom" goto moveBackToUpstairsHall
if "%input%" == "leave rachels bed room" goto moveBackToUpstairsHall
if "%input%" == "leave rachel's room" goto moveBackToUpstairsHall
if "%input%" == "leave rachel's bedroom" goto moveBackToUpstairsHall
if "%input%" == "leave rachel's bed room" goto moveBackToUpstairsHall
if "%input%" == "hallway" goto moveBackToUpstairsHall
if "%input%" == "go hallway" goto moveBackToUpstairsHall
if "%input%" == "go to hallway" goto moveBackToUpstairsHall
if "%input%" == "go back to hallway" goto moveBackToUpstairsHall
if "%input%" == "return hallway" goto moveBackToUpstairsHall
if "%input%" == "return to hallway" goto moveBackToUpstairsHall
if "%input%" == "enter hallway" goto moveBackToUpstairsHall
if "%input%" == "move hallway" goto moveBackToUpstairsHall
if "%input%" == "move to hallway" goto moveBackToUpstairsHall
if "%input%" == "move back to hallway" goto moveBackToUpstairsHall
if "%input%" == "walk hallway" goto moveBackToUpstairsHall
if "%input%" == "walk to hallway" goto moveBackToUpstairsHall
if "%input%" == "walk back to hallway" goto moveBackToUpstairsHall
if "%input%" == "hall" goto moveBackToUpstairsHall
if "%input%" == "go hall" goto moveBackToUpstairsHall
if "%input%" == "go to hall" goto moveBackToUpstairsHall
if "%input%" == "go back to hall" goto moveBackToUpstairsHall
if "%input%" == "return hall" goto moveBackToUpstairsHall
if "%input%" == "return to hall" goto moveBackToUpstairsHall
if "%input%" == "enter hall" goto moveBackToUpstairsHall
if "%input%" == "move hall" goto moveBackToUpstairsHall
if "%input%" == "move to hall" goto moveBackToUpstairsHall
if "%input%" == "move back to hall" goto moveBackToUpstairsHall
if "%input%" == "walk hall" goto moveBackToUpstairsHall
if "%input%" == "walk to hall" goto moveBackToUpstairsHall
if "%input%" == "walk back to hall" goto moveBackToUpstairsHall
if "%input%" == "hall way" goto moveBackToUpstairsHall
if "%input%" == "go hall way" goto moveBackToUpstairsHall
if "%input%" == "go to hall way" goto moveBackToUpstairsHall
if "%input%" == "go back to hall way" goto moveBackToUpstairsHall
if "%input%" == "return hall way" goto moveBackToUpstairsHall
if "%input%" == "return to hall way" goto moveBackToUpstairsHall
if "%input%" == "enter hall way" goto moveBackToUpstairsHall
if "%input%" == "move hall way" goto moveBackToUpstairsHall
if "%input%" == "move to hall way" goto moveBackToUpstairsHall
if "%input%" == "move back to hall way" goto moveBackToUpstairsHall
if "%input%" == "walk hall way" goto moveBackToUpstairsHall
if "%input%" == "walk to hall way" goto moveBackToUpstairsHall
if "%input%" == "walk back to hall way" goto moveBackToUpstairsHall
if "%input%" == "upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hallway" goto moveBackToUpstairsHall
if "%input%" == "upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hall" goto moveBackToUpstairsHall
if "%input%" == "upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "go back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "return upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "return to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "enter upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "move back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "walk back to upstairs hall way" goto moveBackToUpstairsHall
if "%input%" == "fix chair" goto fixRachelsChair
if "%input%" == "set chair upright" goto fixRachelsChair
if "%input%" == "set chair up right" goto fixRachelsChair
if "%input%" == "pick chair up" goto fixRachelsChair
if "%input%" == "pick chair back up" goto fixRachelsChair
if "%input%" == "pick up chair" goto fixRachelsChair
if "%input%" == "stand chair up" goto fixRachelsChair
if "%input%" == "stand chair back up" goto fixRachelsChair
if "%input%" == "stand up chair" goto fixRachelsChair
if "%input%" == "fix her chair" goto fixRachelsChair
if "%input%" == "set her chair upright" goto fixRachelsChair
if "%input%" == "set her chair up right" goto fixRachelsChair
if "%input%" == "pick her chair up" goto fixRachelsChair
if "%input%" == "pick her chair back up" goto fixRachelsChair
if "%input%" == "pick up her chair" goto fixRachelsChair
if "%input%" == "stand her chair up" goto fixRachelsChair
if "%input%" == "stand her chair back up" goto fixRachelsChair
if "%input%" == "stand up her chair" goto fixRachelsChair
if "%input%" == "fix rachels chair" goto fixRachelsChair
if "%input%" == "set rachels chair upright" goto fixRachelsChair
if "%input%" == "set rachels chair up right" goto fixRachelsChair
if "%input%" == "pick rachels chair up" goto fixRachelsChair
if "%input%" == "pick rachels chair back up" goto fixRachelsChair
if "%input%" == "pick up rachels chair" goto fixRachelsChair
if "%input%" == "stand rachels chair up" goto fixRachelsChair
if "%input%" == "stand rachels chair back up" goto fixRachelsChair
if "%input%" == "stand up rachels chair" goto fixRachelsChair
if "%input%" == "fix rachel's chair" goto fixRachelsChair
if "%input%" == "set rachel's chair upright" goto fixRachelsChair
if "%input%" == "set rachel's chair up right" goto fixRachelsChair
if "%input%" == "pick rachel's chair up" goto fixRachelsChair
if "%input%" == "pick rachel's chair back up" goto fixRachelsChair
if "%input%" == "pick up rachel's chair" goto fixRachelsChair
if "%input%" == "stand rachel's chair up" goto fixRachelsChair
if "%input%" == "stand rachel's chair back up" goto fixRachelsChair
if "%input%" == "stand up rachel's chair" goto fixRachelsChair
if "%input%" == "fix desk chair" goto fixRachelsChair
if "%input%" == "set desk chair upright" goto fixRachelsChair
if "%input%" == "set desk chair up right" goto fixRachelsChair
if "%input%" == "pick desk chair up" goto fixRachelsChair
if "%input%" == "pick desk chair back up" goto fixRachelsChair
if "%input%" == "pick up desk chair" goto fixRachelsChair
if "%input%" == "stand desk chair up" goto fixRachelsChair
if "%input%" == "stand desk chair back up" goto fixRachelsChair
if "%input%" == "stand up desk chair" goto fixRachelsChair
if "%input%" == "fix her desk chair" goto fixRachelsChair
if "%input%" == "set her desk chair upright" goto fixRachelsChair
if "%input%" == "set her desk chair up right" goto fixRachelsChair
if "%input%" == "pick her desk chair up" goto fixRachelsChair
if "%input%" == "pick her desk chair back up" goto fixRachelsChair
if "%input%" == "pick up her desk chair" goto fixRachelsChair
if "%input%" == "stand her desk chair up" goto fixRachelsChair
if "%input%" == "stand her desk chair back up" goto fixRachelsChair
if "%input%" == "stand up her desk chair" goto fixRachelsChair
if "%input%" == "fix rachels desk chair" goto fixRachelsChair
if "%input%" == "set rachels desk chair upright" goto fixRachelsChair
if "%input%" == "set rachels desk chair up right" goto fixRachelsChair
if "%input%" == "pick rachels desk chair up" goto fixRachelsChair
if "%input%" == "pick rachels desk chair back up" goto fixRachelsChair
if "%input%" == "pick up rachels desk chair" goto fixRachelsChair
if "%input%" == "stand rachels desk chair up" goto fixRachelsChair
if "%input%" == "stand rachels desk chair back up" goto fixRachelsChair
if "%input%" == "stand up rachels desk chair" goto fixRachelsChair
if "%input%" == "fix rachel's desk chair" goto fixRachelsChair
if "%input%" == "set rachel's desk chair upright" goto fixRachelsChair
if "%input%" == "set rachel's desk chair up right" goto fixRachelsChair
if "%input%" == "pick rachel's desk chair up" goto fixRachelsChair
if "%input%" == "pick rachel's desk chair back up" goto fixRachelsChair
if "%input%" == "pick up rachel's desk chair" goto fixRachelsChair
if "%input%" == "stand rachel's desk chair up" goto fixRachelsChair
if "%input%" == "stand rachel's desk chair back up" goto fixRachelsChair
if "%input%" == "stand up rachel's desk chair" goto fixRachelsChair
if "%input%" == "sit" goto sitInRachelsChair
if "%input%" == "sit down" goto sitInRachelsChair
if "%input%" == "sit chair" goto sitInRachelsChair
if "%input%" == "sit in chair" goto sitInRachelsChair
if "%input%" == "sit on chair" goto sitInRachelsChair
if "%input%" == "sit down chair" goto sitInRachelsChair
if "%input%" == "sit down in chair" goto sitInRachelsChair
if "%input%" == "sit down on chair" goto sitInRachelsChair
if "%input%" == "sit rachels chair" goto sitInRachelsChair
if "%input%" == "sit in rachels chair" goto sitInRachelsChair
if "%input%" == "sit on rachels chair" goto sitInRachelsChair
if "%input%" == "sit down rachels chair" goto sitInRachelsChair
if "%input%" == "sit down in rachels chair" goto sitInRachelsChair
if "%input%" == "sit down on rachels chair" goto sitInRachelsChair
if "%input%" == "sit rachel's chair" goto sitInRachelsChair
if "%input%" == "sit in rachel's chair" goto sitInRachelsChair
if "%input%" == "sit on rachel's chair" goto sitInRachelsChair
if "%input%" == "sit down rachel's chair" goto sitInRachelsChair
if "%input%" == "sit down in rachel's chair" goto sitInRachelsChair
if "%input%" == "sit down on rachel's chair" goto sitInRachelsChair
if "%input%" == "sit her chair" goto sitInRachelsChair
if "%input%" == "sit in her chair" goto sitInRachelsChair
if "%input%" == "sit on her chair" goto sitInRachelsChair
if "%input%" == "sit down her chair" goto sitInRachelsChair
if "%input%" == "sit down in her chair" goto sitInRachelsChair
if "%input%" == "sit down on her chair" goto sitInRachelsChair
if "%input%" == "sit desk chair" goto sitInRachelsChair
if "%input%" == "sit in desk chair" goto sitInRachelsChair
if "%input%" == "sit on desk chair" goto sitInRachelsChair
if "%input%" == "sit down desk chair" goto sitInRachelsChair
if "%input%" == "sit down in desk chair" goto sitInRachelsChair
if "%input%" == "sit down on desk chair" goto sitInRachelsChair
if "%input%" == "sit rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit in rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit on rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit down rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit down in rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit down on rachels desk chair" goto sitInRachelsChair
if "%input%" == "sit rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit in rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit on rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit down rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit down in rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit down on rachel's desk chair" goto sitInRachelsChair
if "%input%" == "sit her desk chair" goto sitInRachelsChair
if "%input%" == "sit in her desk chair" goto sitInRachelsChair
if "%input%" == "sit on her desk chair" goto sitInRachelsChair
if "%input%" == "sit down her desk chair" goto sitInRachelsChair
if "%input%" == "sit down in her desk chair" goto sitInRachelsChair
if "%input%" == "sit down on her desk chair" goto sitInRachelsChair

if "%input%" == "noInput" (
cls
goto rachelsBedroom
)
goto commandError


:sitInRachelsChair
echo.
if "%deskChairFixed%" == "yes" (
echo    You pop a squat in Rachel's desk chair.
echo      ^> Comfy.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom
)
echo    You attempt to sit in Rachel's chair.
echo      ^> One of its upturned legs pokes your butt!
echo      ^> It's been toppled, wedged awkwardly between the
echo        wall and Rachel's bed.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:moveBackToUpstairsHall
echo.
echo    You return to the hallway.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set location=upstairsHall
set /a time=%time% + 1
goto upstairsHall

:fixRachelsChair
echo.
if "%deskChairFixed%" == "yes" (
echo    You already fixed Rachel's chair.
echo.
echo    [Press any key to continue.]
pause >nul
cls
goto rachelsBedroom
)
echo    You fix Rachel's chair.
echo      ^> Much better.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set deskChairFixed=yes
set /a time=%time% + 1
goto rachelsBedroom

:lookForRachelsCharger
echo.
echo    You look for Rachel's laptop charger.
echo      ^> You can't find it.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:use_rachelsComputer
echo.
echo    You attempt to use Rachel's computer.
echo      ^> It's dead.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:cleanMilk
echo.
echo    You consider cleaning the spill.
echo      ^> If the Wheelers wanted it cleaned up, they'd have
echo        done it by now... unless...
echo      ^> Either way - there's no time to cry over it.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:examine_milk
echo.
echo    You examine the spilled glass of milk.
echo      ^> You plug your nose. This spill appears to be the
echo        source of the unpleasant stench. It has to have been
echo        here for days.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:examine_rachelsLaptop
echo.
echo    You examine Rachel's laptop.
echo      ^> It's ruined. Curtling milk invades the space
echo        between the keys. 
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:examine_rachelsDesk
echo.
echo    You examine Rachel's desk.
echo      ^> An old, clunky hand-me-down probably taken from
echo        an office or picked up at Good Will.
echo      ^> Now, spoiling milk seeps into the wood.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:examine_rachelsChair
echo.
if "%deskChairFixed%" == "yes" (
echo    You examine Rachel's chair.
echo      ^> It's a standard desk chair.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom
)
echo    You examine Rachel's chair.
echo      ^> It's been toppled, wedged awkwardly between the
echo        wall and Rachel's bed.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:examine_rachelsBed
echo.
echo    You examine Rachel's bed.
echo      ^> The covers are all messy, but knowing Rachel,
echo        they're probably always like that.
echo.
echo    [Press any key to continue.]
pause >nul
cls
set /a time=%time% + 1
goto rachelsBedroom

:use_rachelsBed
echo.
echo    You lie down for a little nap.
echo      ^> Before you know it, you're being awoken by a shrill
echo        humming voice unlike any you've ever heard before.
echo        It's Mr. Wheeler. "You shouldn't be up here," he says.
echo      ^> "We tried to give you a chance, but you are being
echo        too nosy for your own good... and ours too."
echo      ^> Before you can rise from under the covers to defend
echo        yourself, he is on you, procuring a cylindrical
echo        thermos-shaped tool and swiftly pressing it against
echo        your skin.
echo.
pause >nul
cls
goto gameOver