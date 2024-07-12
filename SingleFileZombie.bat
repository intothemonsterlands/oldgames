@echo off
:new_game
set zombieNumber=1
set zombiesSlain=0
set yourLevel=1
set levelPoints=0
set exp=0
set yourHealth=50
set yourMaxHealth=50
set playerScreen=start_screen
set accuracy=80
set localAccuracy=%accuracy%
set yourMinDamage=5
set yourMaxDamage=10
set firstTimeMainScreen=0
set zombieHealth=25
set zombieMaxHealth=25
set zombieAccuracy=73
set zombieMinDamage=3
set zombieMaxDamage=9
set zombieType=null

set stat_accuracy=0
set stat_evasiveness=0
set stat_resolve=0
set stat_stamina=0
set stat_strength=0

set items=1
set maxInventory=5
set item_apple=1
set item_baglunch=0
set item_booze=0
set item_bottleofmilk=0
set item_bread=0
set item_bubblegum=0
set item_canofsardines=0
set item_carrot=0
set item_coffee=0
set item_cookiedough=0
set item_donut=0
set item_eggsaladsandwich=0
set item_fillet=0
set item_firstaidkit=0
set item_freezypop=0
set item_granolabar=0
set item_hamsandwich=0
set item_hotdog=0
set item_juicebox=0
set item_mysterymeat=0
set item_packofraisins=0
set item_pieceofcandy=0
set item_pieceofcake=0
set item_salmon=0
set item_sundae=0
set item_sushi=0

set item_cheappocketknife=1
set /a items=%items% + 1

set item_axe=0
set item_baseballbat=0
set item_bone=0
set item_brokenbottle=0
set item_broomstick=0
set item_butchersknife=0
set item_butterknife=0
set item_fishingrod=0
set item_fryingpan=0
set item_glassbottle=0
set item_hammer=0
set item_hammerheadshark=0
set item_hoe=0
set item_pencil=0
set item_pitchfork=0
set item_pocketknife=0
set item_policebaton=0
set item_rollingpin=0
set item_ruler=0
set item_spatula=0
set item_saw=0
set item_scalpel=0
set item_scythe=0
set item_shiv=0
set item_stick=0
set item_swordfish=0
set item_toysword=0
set item_treebranch=0
set item_trowel=0
set item_wifflebat=0
set item_wrench=0
set item_yardstick=0

set statuseffect_foodpoisoning=0

:start_screen
set playerScreen=start_screen
mode con: cols=81 lines=29
echo.
echo       ________  ___  ________   ________  ___       _______
echo      ^|\   ____\^|\  \^|\   ___  \^|\   ____\^|\  \     ^|\  ___ \
echo      \ \  \___^|\ \  \ \  \\ \  \ \  \___^|\ \  \    \ \   __/^|   _____________
echo       \ \_____  \ \  \ \  \\ \  \ \  \  __\ \  \    \ \  \_^|/__^|\____________\
echo        \^|____^|\  \ \  \ \  \\ \  \ \  \^|\  \ \  \____\ \  \_^|\ \^|____________^|
echo          ____\_\  \ \__\ \__\\ \__\ \_______\ \_______\ \_______\
echo         ^|\_________\^|__^|\^|__^| \^|__^|\^|_______^|\^|_______^|\^|_______^|
echo         \^|_________^|             ________ ___  ___       _______
echo                                 ^|\  _____\\  \^|\  \     ^|\  ___ \
echo                                 \ \  \__/\ \  \ \  \    \ \   __/^|
echo                                  \ \   __\\ \  \ \  \    \ \  \_^|/__
echo                                   \ \  \_^| \ \  \ \  \____\ \  \_^|\ \
echo                                    \ \__\   \ \__\ \_______\ \_______\
echo                                     \^|__^|    \^|__^|\^|_______^|\^|_______^|
echo             ________  ________  _____ ______   ________  ___  _______
echo            ^|\_____  \^|\   __  \^|\   _ \  _   \^|\   __  \^|\  \^|\  ___ \
echo             \^|___/  /\ \  \^|\  \ \  \\\__\ \  \ \  \^|\ /\ \  \ \   __/^|
echo                 /  / /\ \  \\\  \ \  \\^|__^| \  \ \   __  \ \  \ \  \_^|/__
echo                /  /_/__\ \  \\\  \ \  \    \ \  \ \  \^|\  \ \  \ \  \_^|\ \
echo               ^|\________\ \_______\ \__\    \ \__\ \_______\ \__\ \_______\
echo                \^|_______^|\^|_______^|\^|__^|     \^|__^|\^|_______^|\^|__^|\^|_______^|
echo.
echo.
echo       SINGLE-FILE ZOMBIE by Yustin Riopko     [Press any key to continue.]
pause >nul
goto zombie_fight

:main_screen
if %inFight% == 1 goto zombie_fight
cls
if %firstTimeMainScreen% == 0 goto first_time_main_screen
set playerScreen=main_screen
echo.
echo MAIN SCREEN
echo.
echo            Name: %name%
echo   Your    Level: %yourLevel%
echo   Zombies Slain: %zombiesSlain%
echo   Your   Health: %yourHealth%/%yourMaxHealth%
echo.
echo    1. next zombie
echo    2. check bag
echo    3. allocate level points ^(%levelPoints%^)
echo    4. help
echo.
echo     [What do you do?]
set input=
set /p input=
if "%input%" == "1" goto zombie_fight_stats
if "%input%" == "2" goto bag_main_screen
if "%input%" == "3" goto allocate_level_points
if "%input%" == "4" goto help
if "%input%" == "next zombie" goto zombie_fight_stats
if "%input%" == "next" goto zombie_fight_stats
if "%input%" == "check bag" goto bag_main_screen
if "%input%" == "bag" goto bag_main_screen
if "%input%" == "allocate level points" goto allocate_level_points
if "%input%" == "help" goto help
goto false_input

:allocate_level_points
cls
set playerScreen=allocate_level_points
echo.
echo                               ALLOCATE LEVEL POINTS
echo.
echo              +-----------------------------------------------------+
echo                       Use points you get from leveling up to
echo                          customize your stats and bonuses.
echo.
echo                         You can't reallocate level points.
echo.
echo                                   Level  Points: %levelPoints%
echo.
echo                        Accuracy ^(land more attacks^): Lvl. %stat_accuracy%
echo                      Evasiveness ^(dodge more attacks^): Lvl. %stat_evasiveness%
echo                         Resolve ^(take less damage^): Lvl. %stat_resolve%
echo                            Stamina ^(max health^): Lvl. %stat_stamina%
echo                           Strength ^(carry more^): Lvl. %stat_strength%
echo              +-----------------------------------------------------+
echo.
echo            Type the name of the stat you would like to add a point to.
echo                    Enter "done" to return to the Main Screen.
echo.
set input=
set /p input=
if "%input%" == "done" goto main_screen
if "%input%" == "accuracy" goto allocate_level_points_accuracy
if "%input%" == "Accuracy" goto allocate_level_points_accuracy
if "%input%" == "evasiveness" goto allocate_level_points_evasiveness
if "%input%" == "Evasiveness" goto allocate_level_points_evasiveness
if "%input%" == "resolve" goto allocate_level_points_resolve
if "%input%" == "Resolve" goto allocate_level_points_resolve
if "%input%" == "stamina" goto allocate_level_points_stamina
if "%input%" == "Stamina" goto allocate_level_points_stamina
if "%input%" == "strength" goto allocate_level_points_strength
if "%input%" == "Strength" goto allocate_level_points_strength
goto false_input

:allocate_level_points_accuracy
if %levelPoints% == 0 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You don't have any Level Points.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
if %stat_accuracy% GTR 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Your Accuracy stat won't go any higher.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
set /a stat_accuracy_new=%stat_accuracy% + 1
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|    Your Accuracy increases from Lvl. %stat_accuracy% to Lvl. %stat_accuracy_new%.   ^|
echo              +-----------------------------------------------------+
set /a stat_accuracy=%stat_accuracy% + 1
set /a levelPoints=%levelPoints% - 1
set /a accuracy=%accuracy% + 7
if %accuracy% GTR 100 (
set accuracy=100
)
echo.
echo                           [Press any key to continue.]
pause >nul
goto allocate_level_points

:allocate_level_points_evasiveness
if %levelPoints% == 0 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You don't have any Level Points.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
if %stat_evasiveness% GTR 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|      Your Evasiveness stat won't go any higher.     ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
set /a stat_evasiveness_new=%stat_evasiveness% + 1
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             Your Evasiveness increases              ^|
echo              ^|               from Lvl. %stat_evasiveness% to Lvl. %stat_evasiveness_new%.                ^|
echo              +-----------------------------------------------------+
set /a stat_evasiveness=%stat_evasiveness% + 1
set /a levelPoints=%levelPoints% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
goto allocate_level_points

:allocate_level_points_resolve
if %levelPoints% == 0 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You don't have any Level Points.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
if %stat_resolve% GTR 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        Your Resolve stat won't go any higher.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
set /a stat_resolve_new=%stat_resolve% + 1
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|    Your Resolve increases from Lvl. %stat_resolve% to Lvl. %stat_resolve_new%.    ^|
echo              +-----------------------------------------------------+
set /a stat_resolve=%stat_resolve% + 1
set /a levelPoints=%levelPoints% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
goto allocate_level_points

:allocate_level_points_stamina
if %levelPoints% == 0 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You don't have any Level Points.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
if %stat_stamina% GTR 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        Your Stamina stat won't go any higher.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
set /a stat_stamina_new=%stat_stamina% + 1
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|    Your Stamina increases from Lvl. %stat_stamina% to Lvl. %stat_stamina_new%.    ^|
echo              +-----------------------------------------------------+
set /a stat_stamina=%stat_stamina% + 1
set /a levelPoints=%levelPoints% - 1
if %stat_stamina% == 1 (
set /a yourMaxHealth=%yourMaxHealth% + 8
set /a yourHealth=%yourHealth% + 8
)
if %stat_stamina% == 2 (
set /a yourMaxHealth=%yourMaxHealth% + 10
set /a yourHealth=%yourHealth% + 10
)
if %stat_stamina% == 3 (
set /a yourMaxHealth=%yourMaxHealth% + 12
set /a yourHealth=%yourHealth% + 12
)
echo.
echo                           [Press any key to continue.]
pause >nul
goto allocate_level_points

:allocate_level_points_strength
if %levelPoints% == 0 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You don't have any Level Points.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
if %stat_strength% GTR 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Your Strength stat won't go any higher.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul 
goto allocate_level_points
)
set /a stat_strength_new=%stat_strength% + 1
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|    Your Strength increases from Lvl. %stat_strength% to Lvl. %stat_strength_new%.   ^|
echo              +-----------------------------------------------------+
set /a stat_strength=%stat_strength% + 1
set /a levelPoints=%levelPoints% - 1
if %stat_strength% == 1 (
set /a maxInventory=%maxInventory% + 3
)
if %stat_strength% == 2 (
set /a maxInventory=%maxInventory% + 3
)
if %stat_strength% == 3 (
set /a maxInventory=%maxInventory% + 4
)
echo.
echo                           [Press any key to continue.]
pause >nul
goto allocate_level_points

:bag_main_screen
set playerScreen=bag_main_screen
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                      Inventory                      ^|
if %items% LSS 10 (
if %maxInventory% LSS 10 (
echo              ^|                         %items%/%maxInventory%                         ^|
)
if %maxInventory% GTR 9 (
echo              ^|                        %items%/%maxInventory%                         ^|
)
)
if %items% GTR 9 (
if %maxInventory% GTR 9 (
echo              ^|                        %items%/%maxInventory%                        ^|
)
if %maxInventory% LSS 10 (
echo              ^|                         %items%/%maxInventory%                        ^|
)
)
echo              +-----------------------------------------------------+
echo.
echo         From this menu, you can examine, consume, equip, and discard items.
echo.
echo                          If you're done checking your bag, 
echo                               enter "done" to return.
echo.
echo                     (If you're having trouble using the menu,
echo                          return and access the help menu.)
echo.
echo              +-----------------------------------------------------+
if %items% LSS 1 (
echo                          You ain't go no items, my dude.
)
if %item_apple% GTR 0 (
echo                                      apple x%item_apple%
)
if %item_axe% GTR 0 (
echo                                       axe x%item_axe%
)
if %item_baglunch% GTR 0 (
echo                                    bag lunch x%item_baglunch%
)
if %item_baseballbat% GTR 0 (
echo                                   baseball bat x%item_baseballbat%
)
if %item_bone% GTR 0 (
echo                                      bone x%item_bone%
)
if %item_booze% GTR 0 (
echo                                      booze x%item_booze%
)
if %item_bottleofmilk% GTR 0 (
echo                                 bottle of milk x%item_bottleofmilk%
)
if %item_bread% GTR 0 (
echo                                      bread x%item_bread%
)
if %item_brokenbottle% GTR 0 (
echo                                  broken bottle x%item_brokenbottle%
)
if %item_broomstick% GTR 0 (
echo                                   broomstick x%item_broomstick%
)
if %item_bubblegum% GTR 0 (
echo                                    bubblegum x%item_bubblegum%
)
if %item_butchersknife% GTR 0 (
echo                                 butcher's knife x%item_butchersknife%
)
if %item_butterknife% GTR 0 (
echo                                  butter knife x%item_butterknife%
)
if %item_canofsardines% GTR 0 (
echo                                 can of sardines x%item_canofsardines%
)
if %item_carrot% GTR 0 (
echo                                     carrot x%item_carrot%
)
if %item_cheappocketknife% GTR 0 (
echo                                cheap pocket knife x%item_cheappocketknife%
)
if %item_coffee% GTR 0 (
echo                                     coffee x%item_coffee%
)
if %item_cookiedough% GTR 0 (
echo                                   cookie dough x%item_cookiedough%
)
if %item_donut% GTR 0 (
echo                                      donut x%item_donut%
)
if %item_eggsaladsandwich% GTR 0 (
echo                                egg salad sandwich x%item_eggsaladsandwich%
)
if %item_fillet% GTR 0 (
echo                                     fillet x%item_fillet%
)
if %item_firstaidkit% GTR 0 (
echo                                  first aid kit x%item_firstaidkit%
)
if %item_fishingrod% GTR 0 (
echo                                   fishing rod x%item_fishingrod%
)
if %item_freezypop% GTR 0 (
echo                                   freezy pop x%item_freezypop%
)
if %item_fryingpan% GTR 0 (
echo                                   frying pan x%item_fryingpan%
)
if %item_granolabar% GTR 0 (
echo                                   granola bar x%item_granolabar%
)
if %item_glassbottle% GTR 0 (
echo                                   glass bottle x%item_glassbottle%
)
if %item_hammer% GTR 0 (
echo                                     hammer x%item_hammer%
)
if %item_hammerheadshark% GTR 0 (
echo                                 hammerhead shark x%item_hammerheadshark%
)
if %item_hamsandwich% GTR 0 (
echo                                  ham sandwich x%item_hamsandwich%
)
if %item_hoe% GTR 0 (
echo                                       hoe x%item_hoe%
)
if %item_hotdog% GTR 0 (
echo                                     hotdog x%item_hotdog%
)
if %item_juicebox% GTR 0 (
echo                                    juice box x%item_juicebox%
)
if %item_mysterymeat% GTR 0 (
echo                                  mystery meat x%item_mysterymeat%
)
if %item_packofraisins% GTR 0 (
echo                                 pack of raisins x%item_packofraisins%
)
if %item_pencil% GTR 0 (
echo                                      pencil x%item_pencil%
)
if %item_pieceofcake% GTR 0 (
echo                                  piece of cake x%item_pieceofcake%
)
if %item_pieceofcandy% GTR 0 (
echo                                  piece of candy x%item_pieceofcandy%
)
if %item_pitchfork% GTR 0 (
echo                                     pitchfork x%item_pitchfork%
)
if %item_pocketknife% GTR 0 (
echo                                   pocket knife x%item_pocketknife%
)
if %item_policebaton% GTR 0 (
echo                                   police baton x%item_policebaton%
)
if %item_rollingpin% GTR 0 (
echo                                   rolling pin x%item_rollingpin%
)
if %item_ruler% GTR 0 (
echo                                      ruler x%item_ruler%
)
if %item_salmon% GTR 0 (
echo                                     salmon x%item_salmon%
)
if %item_saw% GTR 0 (
echo                                       saw x%item_saw%
)
if %item_scalpel% GTR 0 (
echo                                     scalpel x%item_scalpel%
)
if %item_scythe% GTR 0 (
echo                                     scythe x%item_scythe%
)
if %item_shiv% GTR 0 (
echo                                      shiv x%item_shiv%
)
if %item_spatula% GTR 0 (
echo                                     spatula x%item_spatula%
)
if %item_stick% GTR 0 (
echo                                      stick x%item_stick%
)
if %item_sundae% GTR 0 (
echo                                     sundae x%item_sundae%
)
if %item_swordfish% GTR 0 (
echo                                    swordfish x%item_swordfish%
)
if %item_sushi% GTR 0 (
echo                                      sushi x%item_sushi%
)
if %item_toysword% GTR 0 (
echo                                    toy sword x%item_toysword%
)
if %item_treebranch% GTR 0 (
echo                                   tree branch x%item_treebranch%
)
if %item_trowel% GTR 0 (
echo                                      trowel x%item_trowel%
)
if %item_wifflebat% GTR 0 (
echo                                    wiffle bat x%item_wifflebat%
)
if %item_wrench% GTR 0 (
echo                                      wrench x%item_wrench%
)
if %item_yardstick% GTR 0 (
echo                                    yardstick x%item_yardstick%
)
echo              +-----------------------------------------------------+
echo.
echo                                 [What do you do?]
set input=
set /p input=
if "%input%" == "use " goto 
if "%input%" == "consume " goto consume_
if "%input%" == "equip " goto equip_
if "%input%" == "unequip " goto unequip_
if "%input%" == "discard " goto discard_
if "%input%" == "done" goto main_screen
if "%input%" == "use pack of raisins" goto consume_packofraisins
if "%input%" == "consume pack of raisins" goto consume_packofraisins
if "%input%" == "equip pack of raisins" goto equip_not_possible
if "%input%" == "unequip pack of raisins" goto unequip_not_possible
if "%input%" == "discard pack of raisins" goto discard_packofraisins
if "%input%" == "examine pack of raisins" goto examine_packofraisins
if "%input%" == "use can of sardines" goto consume_canofsardines
if "%input%" == "consume can of sardines" goto consume_canofsardines
if "%input%" == "equip can of sardines" goto equip_not_possible
if "%input%" == "unequip can of sardines" goto unequip_not_possible
if "%input%" == "discard can of sardines" goto discard_canofsardines
if "%input%" == "examine can of sardines" goto examine_canofsardines
if "%input%" == "use salmon" goto consume_salmon
if "%input%" == "consume salmon" goto consume_salmon
if "%input%" == "equip salmon" goto equip_not_possible
if "%input%" == "unequip salmon" goto unequip_not_possible
if "%input%" == "discard salmon" goto discard_salmon
if "%input%" == "examine salmon" goto examine_salmon
if "%input%" == "use apple" goto consume_apple
if "%input%" == "consume apple" goto consume_apple
if "%input%" == "equip apple" goto equip_not_possible
if "%input%" == "unequip apple" goto unequip_not_possible
if "%input%" == "discard apple" goto discard_apple
if "%input%" == "examine apple" goto examine_apple
if "%input%" == "use bag lunch" goto consume_baglunch
if "%input%" == "consume bag lunch" goto consume_baglunch
if "%input%" == "equip bag lunch" goto equip_not_possible
if "%input%" == "unequip bag lunch" goto unequip_not_possible
if "%input%" == "discard bag lunch" goto discard_baglunch
if "%input%" == "examine bag lunch" goto examine_baglunch
if "%input%" == "use piece of candy" goto consume_pieceofcandy
if "%input%" == "consume piece of candy" goto consume_pieceofcandy
if "%input%" == "equip piece of candy" goto equip_not_possible
if "%input%" == "unequip piece of candy" goto unequip_not_possible
if "%input%" == "discard piece of candy" goto discard_pieceofcandy
if "%input%" == "examine piece of candy" goto 
if "%input%" == "use cookie dough" goto consume_cookiedough
if "%input%" == "consume cookie dough" goto consume_cookiedough
if "%input%" == "equip cookie dough" goto equip_not_possible
if "%input%" == "unequip cookie dough" goto unequip_not_possible
if "%input%" == "discard cookie dough" goto discard_cookiedough
if "%input%" == "examine cookie dough" goto examine_cookiedough
if "%input%" == "use bread" goto consume_bread
if "%input%" == "consume bread" goto consume_bread
if "%input%" == "equip bread" goto equip_not_possible
if "%input%" == "unequip bread" goto unequip_not_possible
if "%input%" == "discard bread" goto discard_bread
if "%input%" == "examine bread" goto examine_bread
if "%input%" == "use piece of cake" goto consume_pieceofcake
if "%input%" == "consume piece of cake" goto consume_pieceofcake
if "%input%" == "equip piece of cake" goto equip_not_possible
if "%input%" == "unequip piece of cake" goto unequip_not_possible
if "%input%" == "discard piece of cake" goto discard_pieceofcake
if "%input%" == "examine piece of cake" goto examine_pieceofcake
if "%input%" == "use booze" goto consume_booze
if "%input%" == "consume booze" goto consume_booze
if "%input%" == "equip booze" goto equip_not_possible
if "%input%" == "unequip booze" goto unequip_not_possible
if "%input%" == "discard booze" goto discard_booze
if "%input%" == "examine booze" goto examine_booze
if "%input%" == "use juice box" goto consume_juicebox
if "%input%" == "consume juice box" goto consume_juicebox
if "%input%" == "equip juice box" goto equip_not_possible
if "%input%" == "unequip juice box" goto unequip_not_possible
if "%input%" == "discard juice box" goto discard_juicebox
if "%input%" == "examine juice box" goto examine_juicebox
if "%input%" == "use freezy pop" goto consume_freezypop
if "%input%" == "consume freezy pop" goto consume_freezypop
if "%input%" == "equip freezy pop" goto equip_not_possible
if "%input%" == "unequip freezy pop" goto unequip_not_possible
if "%input%" == "discard freezy pop" goto discard_freezypop
if "%input%" == "examine freezy pop" goto examine_freezypop
if "%input%" == "use sundae" goto consume_sundae
if "%input%" == "consume sundae" goto consume_sundae
if "%input%" == "equip sundae" goto equip_not_possible
if "%input%" == "unequip sundae" goto unequip_not_possible
if "%input%" == "discard sundae" goto discard_sundae
if "%input%" == "examine sundae" goto examine_sundae
if "%input%" == "use bubblegum" goto consume_bubblegum
if "%input%" == "consume bubblegum" goto consume_bubblegum
if "%input%" == "equip bubblegum" goto equip_not_possible
if "%input%" == "unequip bubblegum" goto unequip_not_possible
if "%input%" == "discard bubblegum" goto discard_bubblegum
if "%input%" == "examine bubblegum" goto examine_bubblegum
if "%input%" == "use hotdog" goto consume_hotdog
if "%input%" == "consume hotdog" goto consume_hotdog
if "%input%" == "equip hotdog" goto equip_not_possible
if "%input%" == "unequip hotdog" goto unequip_not_possible
if "%input%" == "discard hotdog" goto discard_hotdog
if "%input%" == "examine hotdog" goto examine_hotdog
if "%input%" == "use carrot" goto consume_carrot
if "%input%" == "consume carrot" goto consume_carrot
if "%input%" == "equip carrot" goto equip_not_possible
if "%input%" == "unequip carrot" goto unequip_not_possible
if "%input%" == "discard carrot" goto discard_carrot
if "%input%" == "examine carrot" goto examine_carrot
if "%input%" == "use sushi" goto consume_sushi
if "%input%" == "consume sushi" goto consume_sushi
if "%input%" == "equip sushi" goto equip_not_possible
if "%input%" == "unequip sushi" goto unequip_not_possible
if "%input%" == "discard sushi" goto discard_sushi
if "%input%" == "examine sushi" goto examine_sushi
if "%input%" == "use mystery meat" goto consume_mysterymeat
if "%input%" == "consume mystery meat" goto consume_mysterymeat
if "%input%" == "equip mystery meat" goto equip_not_possible
if "%input%" == "unequip mystery meat" goto unequip_not_possible
if "%input%" == "discard mystery meat" goto discard_mysterymeat
if "%input%" == "examine mystery meat" goto examine_mysterymeat
if "%input%" == "use bottle of milk" goto consume_bottleofmilk
if "%input%" == "consume bottle of milk" goto consume_bottleofmilk
if "%input%" == "equip bottle of milk" goto equip_not_possible
if "%input%" == "unequip bottle of milk" goto unequip_not_possible
if "%input%" == "discard bottle of milk" goto discard_bottleofmilk
if "%input%" == "examine bottle of milk" goto examine_bottleofmilk
if "%input%" == "use granola bar" goto consume_granolabar
if "%input%" == "consume granola bar" goto consume_granolabar
if "%input%" == "equip granola bar" goto equip_not_possible
if "%input%" == "unequip granola bar" goto unequip_not_possible
if "%input%" == "discard granola bar" goto discard_granolabar
if "%input%" == "examine granola bar" goto examine_granolabar
if "%input%" == "use fillet" goto consume_fillet
if "%input%" == "consume fillet" goto consume_fillet
if "%input%" == "equip fillet" goto equip_not_possible
if "%input%" == "unequip fillet" goto unequip_not_possible
if "%input%" == "discard fillet" goto discard_fillet
if "%input%" == "examine fillet" goto examine_fillet
if "%input%" == "use egg salad sandwich" goto consume_eggsaladsandwich
if "%input%" == "consume egg salad sandwich" goto consume_eggsaladsandwich
if "%input%" == "equip egg salad sandwich" goto equip_not_possible
if "%input%" == "unequip egg salad sandwich" goto unequip_not_possible
if "%input%" == "discard egg salad sandwich" goto discard_eggsaladsandwich
if "%input%" == "examine egg salad sandwich" goto examine_eggsaladsandwich
if "%input%" == "use ham sandwich" goto consume_hamsandwich
if "%input%" == "consume ham sandwich" goto consume_hamsandwich
if "%input%" == "equip ham sandwich" goto equip_not_possible
if "%input%" == "unequip ham sandwich" goto unequip_not_possible
if "%input%" == "discard ham sandwich" goto discard_hamsandwich
if "%input%" == "examine ham sandwich" goto examine_hamsandwich
if "%input%" == "use donut" goto consume_donut
if "%input%" == "consume donut" goto consume_donut
if "%input%" == "equip donut" goto equip_not_possible
if "%input%" == "unequip donut" goto unequip_not_possible
if "%input%" == "discard donut" goto discard_donut
if "%input%" == "examine donut" goto examine_donut
if "%input%" == "use coffee" goto consume_coffee
if "%input%" == "consume coffee" goto consume_coffee
if "%input%" == "equip coffee" goto equip_not_possible
if "%input%" == "unequip coffee" goto unequip_not_possible
if "%input%" == "discard coffee" goto discard_coffee
if "%input%" == "examine coffee" goto examine_coffee
if "%input%" == "use first aid kit" goto consume_firstaidkit
if "%input%" == "consume first aid kit" goto consume_firstaidkit
if "%input%" == "equip first aid kit" goto equip_not_possible
if "%input%" == "unequip first aid kit" goto unequip_not_possible
if "%input%" == "discard first aid kit" goto discard_firstaidkit
if "%input%" == "examine first aid kit" goto examine_firstaidkit
if "%input%" == "use cheap pocket knife" goto use_weapon_not_in_fight
if "%input%" == "equip cheap pocket knife" goto equip_weapon
if "%input%" == "unequip cheap pocket knife" goto equip_weapon
if "%input%" == "discard cheap pocket knife" goto discard_cheappocketknife
if "%input%" == "examine cheap pocket knife" goto examine_cheappocketknife
if "%input%" == "use axe" goto use_weapon_not_in_fight
if "%input%" == "equip axe" goto equip_weapon
if "%input%" == "unequip axe" goto equip_weapon
if "%input%" == "discard axe" goto discard_axe
if "%input%" == "examine axe" goto examine_axe
if "%input%" == "use baseball bat" goto use_weapon_not_in_fight
if "%input%" == "equip baseball bat" goto equip_weapon
if "%input%" == "unequip baseball bat" goto equip_weapon
if "%input%" == "discard baseball bat" goto discard_baseballbat
if "%input%" == "examine baseball bat" goto examine_baseballbat
if "%input%" == "use bone" goto use_weapon_not_in_fight
if "%input%" == "equip bone" goto equip_weapon
if "%input%" == "unequip bone" goto equip_weapon
if "%input%" == "discard bone" goto discard_bone
if "%input%" == "examine bone" goto examine_bone
if "%input%" == "use broken bottle" goto use_weapon_not_in_fight
if "%input%" == "equip broken bottle" goto equip_weapon
if "%input%" == "unequip broken bottle" goto equip_weapon
if "%input%" == "discard broken bottle" goto discard_brokenbottle
if "%input%" == "examine broken bottle" goto examine_brokenbottle
if "%input%" == "use broomstick" goto use_weapon_not_in_fight
if "%input%" == "equip broomstick" goto equip_weapon
if "%input%" == "unequip broomstick" goto equip_weapon
if "%input%" == "discard broomstick" goto discard_broomstick
if "%input%" == "examine broomstick" goto examine_broomstick
if "%input%" == "use butchers knife" goto use_weapon_not_in_fight
if "%input%" == "equip butchers knife" goto equip_weapon
if "%input%" == "unequip butchers knife" goto equip_weapon
if "%input%" == "discard butchers knife" goto discard_butchersknife
if "%input%" == "examine butchers knife" goto examine_butchersknife
if "%input%" == "use butcher's knife" goto use_weapon_not_in_fight
if "%input%" == "equip butcher's knife" goto equip_weapon
if "%input%" == "unequip butcher's knife" goto equip_weapon
if "%input%" == "discard butcher's knife" goto discard_butchersknife
if "%input%" == "examine butcher's knife" goto examine_butchersknife
if "%input%" == "use butter knife" goto use_weapon_not_in_fight
if "%input%" == "equip butter knife" goto equip_weapon
if "%input%" == "unequip butter knife" goto equip_weapon
if "%input%" == "discard butter knife" goto discard_butterknife
if "%input%" == "examine butter knife" goto examine_butterknife
if "%input%" == "use fishing rod" goto use_weapon_not_in_fight
if "%input%" == "equip fishing rod" goto equip_weapon
if "%input%" == "unequip fishing rod" goto equip_weapon
if "%input%" == "discard fishing rod" goto discard_fishingrod
if "%input%" == "examine fishing rod" goto examine_fishingrod
if "%input%" == "use frying pan" goto use_weapon_not_in_fight
if "%input%" == "equip frying pan" goto equip_weapon
if "%input%" == "unequip frying pan" goto equip_weapon
if "%input%" == "discard frying pan" goto discard_fryingpan
if "%input%" == "examine frying pan" goto examine_fryingpan
if "%input%" == "use glass bottle" goto use_weapon_not_in_fight
if "%input%" == "equip glass bottle" goto equip_weapon
if "%input%" == "unequip glass bottle" goto equip_weapon
if "%input%" == "discard glass bottle" goto discard_glassbottle
if "%input%" == "examine glass bottle" goto examine_glassbottle
if "%input%" == "use hammer" goto use_weapon_not_in_fight
if "%input%" == "equip hammer" goto equip_weapon
if "%input%" == "unequip hammer" goto equip_weapon
if "%input%" == "discard hammer" goto discard_hammer
if "%input%" == "examine hammer" goto examine_hammer
if "%input%" == "use hammerhead shark" goto use_weapon_not_in_fight
if "%input%" == "equip hammerhead shark" goto equip_weapon
if "%input%" == "unequip hammerhead shark" goto equip_weapon
if "%input%" == "discard hammerhead shark" goto discard_hammerheadshark
if "%input%" == "examine hammerhead shark" goto examine_hammerheadshark
if "%input%" == "use hammer head shark" goto use_weapon_not_in_fight
if "%input%" == "equip hammer head shark" goto equip_weapon
if "%input%" == "unequip hammer head shark" goto equip_weapon
if "%input%" == "discard hammer head shark" goto discard_hammerheadshark
if "%input%" == "examine hammer head shark" goto examine_hammerheadshark
if "%input%" == "use hoe" goto use_weapon_not_in_fight
if "%input%" == "equip hoe" goto equip_weapon
if "%input%" == "unequip hoe" goto equip_weapon
if "%input%" == "discard hoe" goto discard_hoe
if "%input%" == "examine hoe" goto examine_hoe
if "%input%" == "use pencil" goto use_weapon_not_in_fight
if "%input%" == "equip pencil" goto equip_weapon
if "%input%" == "unequip pencil" goto equip_weapon
if "%input%" == "discard pencil" goto discard_pencil
if "%input%" == "examine pencil" goto examine_pencil
if "%input%" == "use pitchfork" goto use_weapon_not_in_fight
if "%input%" == "equip pitchfork" goto equip_weapon
if "%input%" == "unequip pitchfork" goto equip_weapon
if "%input%" == "discard pitchfork" goto discard_pitchfork
if "%input%" == "examine pitchfork" goto examine_pitchfork
if "%input%" == "use pocket knife" goto use_weapon_not_in_fight
if "%input%" == "equip pocket knife" goto equip_weapon
if "%input%" == "unequip pocket knife" goto equip_weapon
if "%input%" == "discard pocket knife" goto discard_pocketknife
if "%input%" == "examine pocket knife" goto examine_pocketknife
if "%input%" == "use police baton" goto use_weapon_not_in_fight
if "%input%" == "equip police baton" goto equip_weapon
if "%input%" == "unequip police baton" goto equip_weapon
if "%input%" == "discard police baton" goto discard_policebaton
if "%input%" == "examine police baton" goto examine_policebaton
if "%input%" == "use rolling pin" goto use_weapon_not_in_fight
if "%input%" == "equip rolling pin" goto equip_weapon
if "%input%" == "unequip rolling pin" goto equip_weapon
if "%input%" == "discard rolling pin" goto discard_rollingpin
if "%input%" == "examine rolling pin" goto examine_rollingpin
if "%input%" == "use ruler" goto use_weapon_not_in_fight
if "%input%" == "equip ruler" goto equip_weapon
if "%input%" == "unequip ruler" goto equip_weapon
if "%input%" == "discard ruler" goto discard_ruler
if "%input%" == "examine ruler" goto examine_ruler
if "%input%" == "use spatula" goto use_weapon_not_in_fight
if "%input%" == "equip spatula" goto equip_weapon
if "%input%" == "unequip spatula" goto equip_weapon
if "%input%" == "discard spatula" goto discard_spatula
if "%input%" == "examine spatula" goto examine_spatula
if "%input%" == "use saw" goto use_weapon_not_in_fight
if "%input%" == "equip saw" goto equip_weapon
if "%input%" == "unequip saw" goto equip_weapon
if "%input%" == "discard saw" goto discard_saw
if "%input%" == "examine saw" goto examine_saw
if "%input%" == "use scalpel" goto use_weapon_not_in_fight
if "%input%" == "equip scalpel" goto equip_weapon
if "%input%" == "unequip scalpel" goto equip_weapon
if "%input%" == "discard scalpel" goto discard_scalpel
if "%input%" == "examine scalpel" goto examine_scalpel
if "%input%" == "use scythe" goto use_weapon_not_in_fight
if "%input%" == "equip scythe" goto equip_weapon
if "%input%" == "unequip scythe" goto equip_weapon
if "%input%" == "discard scythe" goto discard_scythe
if "%input%" == "examine scythe" goto examine_scythe
if "%input%" == "use shiv" goto use_weapon_not_in_fight
if "%input%" == "equip shiv" goto equip_weapon
if "%input%" == "unequip shiv" goto equip_weapon
if "%input%" == "discard shiv" goto discard_shiv
if "%input%" == "examine shiv" goto examine_shiv
if "%input%" == "use stick" goto use_weapon_not_in_fight
if "%input%" == "equip stick" goto equip_weapon
if "%input%" == "unequip stick" goto equip_weapon
if "%input%" == "discard stick" goto discard_stick
if "%input%" == "examine stick" goto examine_stick
if "%input%" == "use swordfish" goto use_weapon_not_in_fight
if "%input%" == "equip swordfish" goto equip_weapon
if "%input%" == "unequip swordfish" goto equip_weapon
if "%input%" == "discard swordfish" goto discard_swordfish
if "%input%" == "examine swordfish" goto examine_swordfish
if "%input%" == "use toy sword" goto use_weapon_not_in_fight
if "%input%" == "equip toy sword" goto equip_weapon
if "%input%" == "unequip toy sword" goto equip_weapon
if "%input%" == "discard toy sword" goto discard_toysword
if "%input%" == "examine toy sword" goto examine_toysword
if "%input%" == "use tree branch" goto use_weapon_not_in_fight
if "%input%" == "equip tree branch" goto equip_weapon
if "%input%" == "unequip tree branch" goto equip_weapon
if "%input%" == "discard tree branch" goto discard_treebranch
if "%input%" == "examine tree branch" goto examine_treebranch
if "%input%" == "use trowel" goto use_weapon_not_in_fight
if "%input%" == "equip trowel" goto equip_weapon
if "%input%" == "unequip trowel" goto equip_weapon
if "%input%" == "discard trowel" goto discard_trowel
if "%input%" == "examine trowel" goto examine_trowel
if "%input%" == "use wiffle bat" goto use_weapon_not_in_fight
if "%input%" == "equip wiffle bat" goto equip_weapon
if "%input%" == "unequip wiffle bat" goto equip_weapon
if "%input%" == "discard wiffle bat" goto discard_wifflebat
if "%input%" == "examine wiffle bat" goto examine_wifflebat
if "%input%" == "use wrench" goto use_weapon_not_in_fight
if "%input%" == "equip wrench" goto equip_weapon
if "%input%" == "unequip wrench" goto equip_weapon
if "%input%" == "discard wrench" goto discard_wrench
if "%input%" == "examine wrench" goto examine_wrench
if "%input%" == "use yardstick" goto use_weapon_not_in_fight
if "%input%" == "equip yardstick" goto equip_weapon
if "%input%" == "unequip yardstick" goto equip_weapon
if "%input%" == "discard yardstick" goto discard_yardstick
if "%input%" == "examine yardstick" goto examine_yardstick
goto false_input

:equip_weapon
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|     You don't need to equip or unequip weapons.     ^|
echo              ^|                                                     ^|
echo              ^|          Just select the weapon with which          ^|
echo              ^|        you'd like to attack during the fight        ^|
echo              ^|             after you start to attack.              ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto bag_main_screen

:use_weapon_not_in_fight
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        You can't use weapons out of combat.         ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto bag_main_screen

:discard_cheappocketknife
if %item_cheappocketknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        You discard your cheap pocket knife.         ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_cheappocketknife=%item_cheappocketknife% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_cheappocketknife
if %item_cheappocketknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              Your trusty pocket knife.              ^|
echo              ^|           You take it everywhere with you.          ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 7                    ^|
echo              ^|                   Max. Damage: 12                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_axe
if %item_axe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the axe.                 ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_axe=%item_axe% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_axe
if %item_axe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                       Timber!                       ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 40                   ^|
echo              ^|                   Max. Damage: 50                   ^|
echo              ^|                   Durability: 95%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_baseballbat
if %item_baseballbat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the baseball bat.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_baseballbat=%item_baseballbat% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_baseballbat
if %item_baseballbat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              Swing, batta batta, swing              ^|
echo              ^|                 batta batta, swing!                 ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 20                   ^|
echo              ^|                   Max. Damage: 25                   ^|
echo              ^|                   Durability: 95%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_bone
if %item_bone% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the bone.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bone=%item_bone% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_bone
if %item_bone% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              I have nothing humerus to              ^|
echo              ^|                 say about this bone.                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 10                   ^|
echo              ^|                   Max. Damage: 13                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_pencil
if %item_pencil% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the pencil.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pencil=%item_pencil% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_pencil
if %item_pencil% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              Time to spell their doom...            ^|
echo              ^|                 "T-H-E-I-R-D-O-O-M."                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 6                    ^|
echo              ^|                   Max. Damage: 10                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_brokenbottle
if %item_brokenbottle% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You discard the broken bottle.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_brokenbottle=%item_brokenbottle% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_brokenbottle
if %item_brokenbottle% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                      "Broken."                      ^|
echo              ^|               - Winston McCall, 2005                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 18                   ^|
echo              ^|                   Max. Damage: 23                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_broomstick
if %item_broomstick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the broomstick.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_broomstick=%item_broomstick% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_broomstick
if %item_broomstick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            Time to sweep the competition.           ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 10                   ^|
echo              ^|                   Max. Damage: 18                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_butchersknife
if %item_butchersknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          You discard the butcher's knife.           ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_butchersknife=%item_butchersknife% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_butchersknife
if %item_butchersknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          Like straight from a horror film!          ^|
echo              ^|        Or like, a butcher shop or something.        ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 18                   ^|
echo              ^|                   Max. Damage: 22                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_butterknife
if %item_butterknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the butter knife.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_butterknife=%item_butterknife% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_butterknife
if %item_butterknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Better than nothin'.                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 5                    ^|
echo              ^|                   Max. Damage: 12                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_fishingrod
if %item_fishingrod% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the fishing rod.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_fishingrod=%item_fishingrod% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_fishingrod
if %item_fishingrod% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Better than nothin'.                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 15                   ^|
echo              ^|                   Max. Damage: 17                   ^|
echo              ^|                   Durability: 80%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_fryingpan
if %item_fryingpan% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the frying pan.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_fryingpan=%item_fryingpan% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_fryingpan
if %item_fryingpan% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Better than nothin'.                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 12                   ^|
echo              ^|                   Max. Damage: 14                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_glassbottle
if %item_glassbottle% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the glass bottle.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_glassbottle=%item_glassbottle% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_glassbottle
if %item_glassbottle% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          Neither half-empty nor half-full.          ^|
echo              ^|                 Just regular empty.                 ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 10                   ^|
echo              ^|                   Max. Damage: 12                   ^|
echo              ^|                   Durability: 60%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_hammer
if %item_hammer% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the hammer.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hammer=%item_hammer% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_hammer
if %item_hammer% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         Give it another nail in its coffin...       ^|
echo              ^|             Maybe it'll work this time.             ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 15                   ^|
echo              ^|                   Max. Damage: 25                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_hammerheadshark
if %item_hammerheadshark% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          You discard the hammerhead shark.          ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hammerheadshark=%item_hammerheadshark% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_hammerheadshark
if %item_hammerheadshark% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 "Stop! Hammer time!"                ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 28                   ^|
echo              ^|                   Max. Damage: 33                   ^|
echo              ^|                   Durability: 99%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_hoe
if %item_hoe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the hoe.                 ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hoe=%item_hoe% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_hoe
if %item_hoe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            Insert witty line about a hoe.           ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 14                   ^|
echo              ^|                   Max. Damage: 18                   ^|
echo              ^|                   Durability: 80%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_pitchfork
if %item_pitchfork% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the pitchfork.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pitchfork=%item_pitchfork% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_pitchfork
if %item_pitchfork% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         Insert witty line about a pitchfork.        ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 35                   ^|
echo              ^|                   Max. Damage: 40                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_pocketknife
if %item_pocketknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the pocket knife.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pocketknife=%item_pocketknife% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_pocketknife
if %item_pocketknife% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
if %item_cheappocketknife% LSS 1 (
echo              ^|             Kind of reminds you of your             ^|
echo              ^|             cheap pocket knife... R.I.P.            ^|
)
if %item_cheappocketknife% GTR 0 (
echo              ^|                    Ayy, upgrade!                    ^|
)
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 9                    ^|
echo              ^|                   Max. Damage: 14                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_policebaton
if %item_policebaton% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the police baton.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_policebaton=%item_policebaton% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_policebaton
if %item_policebaton% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Maintain the order.                 ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 6                    ^|
echo              ^|                   Max. Damage: 12                   ^|
echo              ^|                   Durability: 95%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_rollingpin
if %item_rollingpin% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the rolling pin.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_rollingpin=%item_rollingpin% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_rollingpin
if %item_rollingpin% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Insert witty line about a rolling pin.        ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 15                   ^|
echo              ^|                   Max. Damage: 16                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_ruler
if %item_ruler% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the ruler.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_ruler=%item_ruler% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_ruler
if %item_ruler% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          Insert witty line about a ruler.           ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 8                    ^|
echo              ^|                   Max. Damage: 10                   ^|
echo              ^|                   Durability: 60%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_spatula
if %item_spatula% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              You discard the spatula.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_spatula=%item_spatula% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_spatula
if %item_spatula% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Make Spongebob proud...             ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 12                   ^|
echo              ^|                   Max. Damage: 17                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_saw
if %item_saw% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the saw.                 ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_saw=%item_saw% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_saw
if %item_saw% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         This weapon more than makes the cut.        ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 26                   ^|
echo              ^|                   Max. Damage: 31                   ^|
echo              ^|                   Durability: 85%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_scalpel
if %item_scalpel% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              You discard the scalpel.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_scalpel=%item_scalpel% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_scalpel
if %item_scalpel% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         Like an X-ACTO knife, but for flesh.        ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 11                   ^|
echo              ^|                   Max. Damage: 14                   ^|
echo              ^|                   Durability: 60%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_scythe
if %item_scythe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the scythe.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_scythe=%item_scythe% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_scythe
if %item_scythe% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|      Perk: Makes you feel like the Grim Reaper.     ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 31                   ^|
echo              ^|                   Max. Damage: 36                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_shiv
if %item_shiv% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the shiv.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_shiv=%item_shiv% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_shiv
if %item_shiv% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  A makeshift knife.                 ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 8                   ^|
echo              ^|                   Max. Damage: 12                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_stick
if %item_stick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the stick.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_stick=%item_stick% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_stick
if %item_stick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|      Really goin' out on a limb with this one...    ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 6                   ^|
echo              ^|                   Max. Damage: 10                   ^|
echo              ^|                   Durability: 40%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_swordfish
if %item_swordfish% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the swordfish.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_swordfish=%item_swordfish% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_swordfish
if %item_swordfish% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            It's time to fin-ish you! Heh...         ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 28                   ^|
echo              ^|                   Max. Damage: 33                   ^|
echo              ^|                   Durability: 99%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_toysword
if %item_toysword% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the toy sword.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_toysword=%item_toysword% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_toysword
if %item_toysword% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Like a real sword, but way less useful.       ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 12                   ^|
echo              ^|                   Max. Damage: 17                   ^|
echo              ^|                   Durability: 80%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_treebranch
if %item_treebranch% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the tree branch.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_treebranch=%item_treebranch% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_treebranch
if %item_treebranch% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            Really branching out with your           ^|
echo              ^|                weapon diversity here.               ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 11                   ^|
echo              ^|                   Max. Damage: 19                   ^|
echo              ^|                   Durability: 80%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_trowel
if %item_trowel% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the trowel.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_trowel=%item_trowel% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_trowel
if %item_trowel% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          Digging graves! Slowly but surely.         ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 13                   ^|
echo              ^|                   Max. Damage: 19                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_wifflebat
if %item_wifflebat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the wiffle bat.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_wifflebat=%item_wifflebat% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_wifflebat
if %item_wifflebat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               A plastic baseball bat.               ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 9                   ^|
echo              ^|                   Max. Damage: 16                   ^|
echo              ^|                   Durability: 90%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_wrench
if %item_wrench% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the wrench.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_wrench=%item_wrench% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_wrench
if %item_wrench% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               These guys are screwed!               ^|
echo              ^|                                                     ^|
echo              ^|                 Wait, wrong tool...                 ^|
echo              ^|              Now the pun doesn't work.              ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 16                   ^|
echo              ^|                   Max. Damage: 22                   ^|
echo              ^|                   Durability: 95%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_yardstick
if %item_yardstick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the yardstick.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_yardstick=%item_yardstick% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_yardstick
if %item_yardstick% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             Insert pun about yardsticks.            ^|
echo              ^|                                                     ^|
echo              ^|                   Weapon details                    ^|
echo              ^|                   Min. Damage: 12                   ^|
echo              ^|                   Max. Damage: 15                   ^|
echo              ^|                   Durability: 80%%                   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_apple
if %item_apple% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the apple.                  ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 5 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 4 (
echo              ^|                     +5 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_apple=%item_apple% - 1
set /a yourHealth=%yourHealth% + 5
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_apple
if %item_apple% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard one apple.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_apple=%item_apple% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_apple
if %item_apple% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        An apple a day keeps the doctor away.        ^|
echo              ^|             Consume for up to 5 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_baglunch
if %item_baglunch% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|               You eat the bag lunch.                ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 45 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 44 (
echo              ^|                     +45 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_baglunch=%item_baglunch% - 1
set /a yourHealth=%yourHealth% + 45
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_baglunch
if %item_baglunch% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard one bag lunch.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_baglunch=%item_baglunch% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_baglunch
if %item_baglunch% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            An all-in-one in a paper bag.            ^|
echo              ^|            Consume for up to 45 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_booze
if %item_booze% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                You drink the booze.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 40 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 39 (
echo              ^|                     +40 Health!                      ^|
echo              ^|                   -20%% Accuracy!                     ^|
)
echo              ^|                                                     ^|
echo              ^|                  +1 Glass Bottle!                   ^|
echo              +-----------------------------------------------------+
set /a item_booze=%item_booze% - 1
set /a yourHealth=%yourHealth% + 40
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
set /a localAccuracy=%localAccuracy% - 20
if %localAccuracy% LSS 1 (
set localAccuracy=0
)
set /a item_glassbottle=%item_glassbottle% + 1
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_booze
if %item_booze% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the booze.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_booze=%item_booze% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_booze
if %item_booze% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       "Spin the bottle, kiss only the bottle."      ^|
echo              ^|         Consume for up to 40 health, at the         ^|
echo              ^|       temporary cost of 20%% reduced accuracy.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_bread
if %item_bread% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the bread.                  ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                     +15 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bread=%item_bread% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_bread
if %item_bread% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the bread.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bread=%item_bread% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_bread
if %item_bread% LSS 1 goto false_input
set /a examine_text=1 + %RANDOM% %% (2 - 1 + 1)
if %examine_text% == 1 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              Wheat are you lookin' at?              ^|
echo              ^|             Consume for up to 15 health.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
if %examine_text% == 2 (
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Quit loafin' around.                ^|
echo              ^|             Consume for up to 15 health.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)

:consume_bubblegum
if %item_bubblegum% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|               You eat the bubblegum.                ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 2 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 1 (
echo              ^|                     +2 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bubblegum=%item_bubblegum% - 1
set /a yourHealth=%yourHealth% + 2
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_bubblegum
if %item_bubblegum% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard the bubblegum.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bubblegum=%item_bubblegum% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_bubblegum
if %item_bubblegum% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  Don't swallow it!                  ^|
echo              ^|             Consume for up to 2 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_canofsardines
if %item_canofsardines% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|            You eat the can of sardines.             ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 20 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 19 (
echo              ^|                     +20 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_canofsardines=%item_canofsardines% - 1
set /a yourHealth=%yourHealth% + 20
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_canofsardines
if %item_canofsardines% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          You discard one can of sardines.           ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_canofsardines=%item_canofsardines% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_canofsardines
if %item_canofsardines% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                      Stinky!                        ^|
echo              ^|            Consume for up to 20 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_carrot
if %item_carrot% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the carrot.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 5 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 4 (
echo              ^|                     +5 Health!                      ^|
echo              ^|                    +2%% Accuracy!                    ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_carrot=%item_carrot% - 1
set /a yourHealth=%yourHealth% + 5
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
set /a accuracy=%accuracy% + 2
if %accuracy% GTR 100 (
set accuracy=100
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_carrot
if %item_carrot% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard one carrot.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_carrot=%item_carrot% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_carrot
if %item_carrot% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            Vitamin A; good for the eyes!            ^|
echo              ^|             Consume for up to 5 health.             ^|
echo              ^|        Permanently increases accuracy by 2%%.        ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_freezypop
if %item_freezypop% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|               You eat the freezy pop.               ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                     +15 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_freezypop=%item_freezypop% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_freezypop
if %item_freezypop% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard one freezy pop.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_freezypop=%item_freezypop% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_freezypop
if %item_freezypop% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|     It's like a... like, a popsicle, you know?      ^|
echo              ^|            Consume for up to 15 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_hotdog
if %item_hotdog% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the hotdog.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                     +25 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hotdog=%item_hotdog% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_hotdog
if %item_hotdog% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard one hotdog.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hotdog=%item_hotdog% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_hotdog
if %item_hotdog% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               Teehee, it's a wiener.                ^|
echo              ^|             Consume for up to 25 health.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_juicebox
if %item_juicebox% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|              You drink the juice box.               ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                     +15 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_juicebox=%item_juicebox% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_juicebox
if %item_juicebox% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard one juice box.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_juicebox=%item_juicebox% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_juicebox
if %item_juicebox% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               100% real fruit juice.                ^|
echo              ^|            Consume for up to 15 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_packofraisins
if %item_packofraisins% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|            You eat the pack of raisins.             ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 9 (
echo              ^|                     +10 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_packofraisins=%item_packofraisins% - 1
set /a yourHealth=%yourHealth% + 10
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_packofraisins
if %item_packofraisins% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          You discard one pack of raisins.           ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_packofraisins=%item_packofraisins% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_packofraisins
if %item_packofraisins% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               Basically grape jerky.                ^|
echo              ^|            Consume for up to 10 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_pieceofcake
if %item_pieceofcake% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|             You eat the piece of cake.              ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                     +25 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pieceofcake=%item_pieceofcake% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_pieceofcake
if %item_pieceofcake% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You discard one piece of cake.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pieceofcake=%item_pieceofcake% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_pieceofcake
if %item_pieceofcake% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  A delicious treat.                 ^|
echo              ^|             Consume for up to 25 health.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_pieceofcandy
if %item_pieceofcandy% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|             You eat the piece of candy.             ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 3 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 2 (
echo              ^|                     +3 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pieceofcandy=%item_pieceofcandy% - 1
set /a yourHealth=%yourHealth% + 5
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_pieceofcandy
if %item_pieceofcandy% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You discard one piece of candy.           ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_pieceofcandy=%item_pieceofcandy% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_pieceofcandy
if %item_pieceofcandy% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                Ooo, piece of candy...               ^|
echo              ^|             Consume for up to 3 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_salmon
if %item_salmon% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                You eat the salmon.                  ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 30 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 29 (
echo              ^|                     +30 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_salmon=%item_salmon% - 1
set /a yourHealth=%yourHealth% + 30
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_salmon
if %item_canofsardines% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              You discard one salmon.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_salmon=%item_salmon% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_salmon
if %item_salmon% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         Examine salmon? Haha, that rhymes!          ^|
echo              ^|            Consume for up to 30 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_sundae
if %item_sundae% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the sundae.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                     +25 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_sundae=%item_sundae% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%

if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_sundae
if %item_sundae% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard one sundae.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_sundae=%item_sundae% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_sundae
if %item_sundae% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|        An apple a day keeps the doctor away.        ^|
echo              ^|            Consume for up to 25 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_sushi
if %item_sushi% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a contractStatusEffect=1 + %RANDOM% %% (5 - 1 + 1)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the sushi.                  ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                    +15 Health!                      ^|
)
if %contractStatusEffect% == 1 (
echo              ^|                                                     ^|
echo              ^|            You contract food poisoning.             ^|
echo              ^|          You won't be able to eat or drink          ^|
echo              ^|         until your food poisoning subsides.         ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_sushi=%item_sushi% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %contractStatusEffect% == 1 (
set statuseffect_foodpoisoning=2
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_sushi
if %item_sushi% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the sushi.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_sushi=%item_sushi% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_sushi
if %item_sushi% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                    Kinda iffy...                    ^|
echo              ^|            Consume for up to 15 health.             ^|
echo              ^|            20%% chance of food poisoning.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_mysterymeat
if %item_mysterymeat% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a contractStatusEffect=1 + %RANDOM% %% (5 - 1 + 1)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|              You eat the mystery meat.              ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                    +25 Health!                      ^|
)
if %contractStatusEffect% == 1 (
echo              ^|                                                     ^|
echo              ^|            You contract food poisoning.             ^|
echo              ^|          You won't be able to eat or drink          ^|
echo              ^|         until your food poisoning subsides.         ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_mysterymeat=%item_mysterymeat% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %contractStatusEffect% == 1 (
set statuseffect_foodpoisoning=2
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_mysterymeat
if %item_mysterymeat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the mystery meat.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_mysterymeat=%item_mysterymeat% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_mysterymeat
if %item_mysterymeat% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|     Close your eyes; don't chew; swallow fast.      ^|
echo              ^|            Consume for up to 25 health.             ^|
echo              ^|            20%% chance of food poisoning.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_cookiedough
if %item_cookiedough% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a contractStatusEffect=1 + %RANDOM% %% (8 - 1 + 1)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|              You eat the cookie dough.              ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                    +15 Health!                      ^|
)
if %contractStatusEffect% == 1 (
echo              ^|                                                     ^|
echo              ^|            You contract food poisoning.             ^|
echo              ^|          You won't be able to eat or drink          ^|
echo              ^|         until your food poisoning subsides.         ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_cookiedough=%item_cookiedough% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %contractStatusEffect% == 1 (
set statuseffect_foodpoisoning=2
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_cookiedough
if %item_cookiedough% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            You discard the cookie dough.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_cookiedough=%item_cookiedough% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_cookiedough
if %item_cookiedough% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|          Kinda warm, but who could resist!          ^|
echo              ^|            Consume for up to 15 health.             ^|
echo              ^|           12.5%% chance of food poisoning.           ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_bottleofmilk
if %item_bottleofmilk% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You drink the milk.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                     +15 Health!                     ^|
)
echo              ^|                                                     ^|
echo              ^|                  +1 Glass Bottle!                   ^|
echo              +-----------------------------------------------------+

set /a item_bottleofmilk=%item_bottleofmilk% - 1
set /a yourHealth=%yourHealth% + 15
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
set /a item_glassbottle=%item_glassbottle% + 1
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_bottleofmilk
if %item_bottleofmilk% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard the milk.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_bottleofmilk=%item_bottleofmilk% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_bottleofmilk
if %item_bottleofmilk% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|   "I see you're drinking one percent... You could   ^|
echo              ^|     totally be drinking whole if you wanted to."    ^|
echo              ^|            Consume for up to 15 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_granolabar
if %item_granolabar% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|              You drink a granola bar.               ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 15 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 14 (
echo              ^|                     +20 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_granolabar=%item_granolabar% - 1
set /a yourHealth=%yourHealth% + 20
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_granolabar
if %item_granolabar% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard a granola bar.              ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_granolabar=%item_granolabar% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_granolabar
if %item_granolabar% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               A fairly healthy snack.               ^|
echo              ^|            Consume for up to 20 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_fillet
if %item_fillet% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the fillet.                 ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 50 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 49 (
echo              ^|                     +50 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_fillet=%item_fillet% - 1
set /a yourHealth=%yourHealth% + 50
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_fillet
if %item_fillet% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard a fillet.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_fillet=%item_fillet% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_fillet
if %item_fillet% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         A savory, fatless cut of red meat.          ^|
echo              ^|            Consume for up to 50 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_eggsaladsandwich
if %item_eggsaladsandwich% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|           You eat the egg salad sandwich.           ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                     +25 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_eggsaladsandwich=%item_eggsaladsandwich% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_eggsaladsandwich
if %item_eggsaladsandwich% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|         You discard an egg salad sandwich.          ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_eggsaladsandwich=%item_eggsaladsandwich% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_eggsaladsandwich
if %item_eggsaladsandwich% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            Good lunch food, or whatever.            ^|
echo              ^|            Consume for up to 25 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_hamsandwich
if %item_hamsandwich% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|              You eat the ham sandwich.              ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 25 (
if %healthDeficit% GTR 9 (
echo              ^|                     +%healthDeficit% Health!                     ^|
)
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
)
if %healthDeficit% GTR 24 (
echo              ^|                     +25 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hamsandwich=%item_hamsandwich% - 1
set /a yourHealth=%yourHealth% + 25
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_hamsandwich
if %item_hamsandwich% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             You discard a ham sandwich.             ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_hamsandwich=%item_hamsandwich% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_hamsandwich
if %item_hamsandwich% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|  Sandwich with some deli-cious meat on it... Heh.   ^|
echo              ^|            Consume for up to 25 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_donut
if %item_donut% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You eat the donut.                  ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 9 (
echo              ^|                     +10 Health!                     ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_donut=%item_donut% - 1
set /a yourHealth=%yourHealth% + 10
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_donut
if %item_donut% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You discard a donut...               ^|
echo              ^|                                                     ^|
echo              ^|           Somewhere, a zombie cop rolls,            ^|
echo              ^|                but not in his grave.                ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_donut=%item_donut% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_donut
if %item_donut% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Post-apocalyptic America runs on donut.       ^|
echo              ^|            Consume for up to 10 health.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_coffee
if %item_coffee% LSS 1 goto false_input
cls
if %statuseffect_foodpoisoning% GTR 0 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You can't eat or drink until             ^|
echo              ^|            your food poisoning subsides.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash
)
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|                You drink the coffee.                ^|
echo              ^|                                                     ^|
if %healthDeficit% LSS 10 (
echo              ^|                     +%healthDeficit% Health!                      ^|
)
if %healthDeficit% GTR 9 (
echo              ^|                     +10 Health!                      ^|
)
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_coffee=%item_coffee% - 1
set /a yourHealth=%yourHealth% + 10
if %yourHealth% GTR %yourMaxHealth% (
set yourHealth=%yourMaxHealth%
)
if %inFight% == 1 goto zombie_turn_fight
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_coffee
if %item_coffee% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               You discard the coffee.               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_coffee=%item_coffee% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_coffee
if %item_coffee% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|              How has this not spilled?              ^|
echo              ^|             Consume for up to 10 health.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:consume_firstaidkit
if %item_firstaidkit% LSS 1 goto false_input
cls
set /a healthDeficit=%yourMaxHealth% - %yourHealth%
echo.
echo              +-----------------------------------------------------+
echo              ^|             You use the first aid kit.              ^|
echo              ^|                                                     ^|
echo              ^|               Health restored to max!               ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_firstaidkit=%item_firstaidkit% - 1
set yourHealth=%yourMaxHealth%
echo.
if %inFight% == 1 goto zombie_turn_fight
echo                           [Press any key to continue.]
pause >nul
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:discard_firstaidkit
if %item_firstaidkit% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You discard the first aid kit.            ^|
echo              +-----------------------------------------------------+
set /a items=%items% - 1
set /a item_coffee=%item_firstaidkit% - 1
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto zombie_fight
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:examine_firstaidkit
if %item_firstaidkit% LSS 1 goto false_input
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           Everything you need to heal up.           ^|
echo              ^|            Use to restore health to max.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
if %inFight% == 1 goto bag_main_screen
if %inFIght% == 0 goto bag_main_screen
goto game_crash

:first_time_main_screen
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           Wow!                                      ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           Wow! That was pretty impressive!          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
:first_time_main_screen_final_prompt
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           Wow! That was pretty impressive!          ^|
echo              ^|                                                     ^|
echo              ^|                    Who are you?                     ^|
echo              +-----------------------------------------------------+
echo.
echo                        [Type your name, then press enter.]
set /p name=
if "%name%" == "" goto first_time_main_screen_final_prompt
:confirm_name
cls
echo.
echo   Confirm the name: %name%
echo.
echo    1. Yes
echo    2. No
set input=
set /p input=
if "%input%" == "1" goto continue_first_time_main_screen
if "%input%" == "yes" goto continue_first_time_main_screen
if "%input%" == "2" goto first_time_main_screen
if "%input%" == "no" goto first_time_main_screen
goto confirm_name

:continue_first_time_main_screen
if "%name%" == "skip" (
set firstTimeMainScreen=1
goto main_screen
) 
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               It's nice to meet you...              ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               It's nice to meet you...              ^|
echo              ^|           But you don't really have a lot           ^|
echo              ^|              of time to chat right now.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               It's nice to meet you...              ^|
echo              ^|           But you don't really have a lot           ^|
echo              ^|              of time to chat right now.             ^|
echo              ^|                                                     ^|
echo              ^|           As you can see, there are quite           ^|
echo              ^|                 a few zombies here.                 ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               It's nice to meet you...              ^|
echo              ^|           But you don't really have a lot           ^|
echo              ^|              of time to chat right now.             ^|
echo              ^|                                                     ^|
echo              ^|           As you can see, there are quite           ^|
echo              ^|                 a few zombies here.                 ^|
echo              ^|                                                     ^|
echo              ^|   Yes, yes, the "zombie apocalypse," bla bla bla.   ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|               It's nice to meet you...              ^|
echo              ^|           But you don't really have a lot           ^|
echo              ^|              of time to chat right now.             ^|
echo              ^|                                                     ^|
echo              ^|           As you can see, there are quite           ^|
echo              ^|                 a few zombies here.                 ^|
echo              ^|                                                     ^|
echo              ^|   Yes, yes, the "zombie apocalypse," bla bla bla.   ^|
echo              ^|                                                     ^|
echo              ^|           I know it's a little over-done,           ^|
echo              ^|           but this time it's real, and not          ^|
echo              ^|        just in a text-based game or whatever.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite.                                 ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              ^|                                                     ^|
echo              ^|                 Thoughtful, really.                 ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              ^|                                                     ^|
echo              ^|                 Thoughtful, really.                 ^|
echo              ^|                                                     ^|
echo              ^|            But they won't let you escape.           ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              ^|                                                     ^|
echo              ^|                 Thoughtful, really.                 ^|
echo              ^|                                                     ^|
echo              ^|            But they won't let you escape.           ^|
echo              ^|                                                     ^|
echo              ^|       You'll surely die, but how many zombies       ^|
echo              ^|      will you kill before your inevitable doom?     ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              ^|                                                     ^|
echo              ^|                 Thoughtful, really.                 ^|
echo              ^|                                                     ^|
echo              ^|            But they won't let you escape.           ^|
echo              ^|                                                     ^|
echo              ^|       You'll surely die, but how many zombies       ^|
echo              ^|      will you kill before your inevitable doom?     ^|
echo              ^|                                                     ^|
echo              ^|                  Let's find out in                  ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|       Actually, this zombie apocalypse isn't        ^|
echo              ^|            exactly as it was envisioned.            ^|
echo              ^|                                                     ^|
echo              ^|            These zombies are kind of...             ^|
echo              ^|             polite. Like, considerate.              ^|
echo              ^|                                                     ^|
echo              ^|           Sure, they want brains and all.           ^|
echo              ^|           There's no getting around that.           ^|
echo              ^|                                                     ^|
echo              ^|      But these guys have a sense for fairness.      ^|
echo              ^|                                                     ^|
echo              ^|      They attack one at a time, and they even       ^|
echo              ^|      wait between assaults until you're ready.      ^|
echo              ^|                                                     ^|
echo              ^|                 Thoughtful, really.                 ^|
echo              ^|                                                     ^|
echo              ^|            But they won't let you escape.           ^|
echo              ^|                                                     ^|
echo              ^|       You'll surely die, but how many zombies       ^|
echo              ^|      will you kill before your inevitable doom?     ^|
echo              ^|                                                     ^|
echo              ^|                  Let's find out in                  ^|
echo              ^|                 SINGLE-FILE ZOMBIE.                 ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
set firstTimeMainScreen=1
goto main_screen

:help
set playerScreen=help
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|           You've accessed the HELP menu.            ^|
echo              ^|                                                     ^|
echo              ^|         What exactly do you need help with?         ^|
echo              +-----------------------------------------------------+
echo.
echo                              1. inputting commands
echo                              2. fighting/attacking
echo                            3. doing things with items
echo                                     4. done
echo.
echo                       Type just the number that corresponds
echo                         with the thing you need help with;
echo                                 then press enter.
echo.
echo                         If you're done with the help menu,
echo                       enter "4" or "done"; then press enter.
set input=
set /p input=
if "%input%" == "1" goto help_inputting_commands
if "%input%" == "2" goto help_fighting_attacking
if "%input%" == "3" goto help_items
if "%input%" == "4" (
if %inFight% == 0 goto main_screen
if %inFight% == 1 goto zombie_fight
)
if "%input%" == "done" (
if %inFight% == 0 goto main_screen
if %inFight% == 1 goto zombie_fight
)
goto false_input


:help_inputting_commands
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  INPUTTING COMMANDS                 ^|
echo              ^|                                                     ^|
echo              ^|      In order to make decisions and execute on      ^|
echo              ^|       them in SINGLE-FILE ZOMBIE, you need to       ^|
echo              ^|           understand how to use commands.           ^|
echo              ^|                                                     ^|
echo              ^|      Whenever you're prompted for input, there      ^|
echo              ^|       will be a list of options. Sometimes it       ^|
echo              ^|      will be numbered; other times there won't      ^|
echo              ^|                   be any numbers.                   ^|
echo              ^|                                                     ^|
echo              ^|       If the list of options is numbered, type      ^|
echo              ^|       just the number that correlates with the      ^|
echo              ^|      action you want to take, then press enter.     ^|
echo              ^|                                                     ^|
echo              ^|      If the list of options isn't numbered, you     ^|
echo              ^|      will have to type out the phrase from the      ^|
echo              ^|            list of actions you can take;            ^|
echo              ^|                  then press enter.                  ^|
echo              ^|                                                     ^|
echo              ^|        For more specific directions, look at        ^|
echo              ^|                the other HELP pages.                ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto help

:help_fighting_attacking
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  FIGHTING/ATTACKING                 ^|
echo              ^|                                                     ^|
echo              ^|         In order to progress in SINGLE-FILE         ^|
echo              ^|        ZOMBIE, you'll have to deal damage to        ^|
echo              ^|             the undead enemies you face.            ^|
echo              ^|                                                     ^|
echo              ^|        When it's your turn to act in a fight,       ^|
echo              ^|        you may select to attack your enemy by       ^|
echo              ^|         typing either "1" or "attack", then         ^|
echo              ^|                    pressing enter.                  ^|
echo              ^|                                                     ^|
echo              ^|          Once you've done this, you're only         ^|
echo              ^|       halfway done attacking. Next, you'll be       ^|
echo              ^|          asked which item you attack with.          ^|
echo              ^|                                                     ^|
echo              ^|        This time, the list of actions you can       ^|
echo              ^|        take won't be numbered. To select the        ^|
echo              ^|        weapon, type its name as it appears in       ^|
echo              ^|             the list; then press enter.             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto help_fighting_attacking_page_2


:help_fighting_attacking_page_2
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|             FIGHTING/ATTACKING continued            ^|
echo              ^|                                                     ^|
echo              ^|     The result of your action and the zombie's      ^|
echo              ^|     will be calculated and displayed before you     ^|
echo              ^|       are again prompted for input. This will       ^|
echo              ^|     repeat until either you or the zombie dies.     ^|
echo              ^|                                                     ^|
echo              ^|     The size of your weapons list will grow as      ^|
echo              ^|     your stand progresses and you collect more      ^|
echo              ^|            things with which to attack.             ^|
echo              ^|                                                     ^|
echo              ^|         TIP: Entering "1" when prompted to          ^|
echo              ^|       specify a weapon will default to fists.       ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto help

:help_items
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                  ITEMS AND INVENTORY                ^|
echo              ^|                                                     ^|
echo              ^|          As you last in this zombie-ridden          ^|
echo              ^|         shadow of the former world, you will        ^|
echo              ^|          come into possession of new items.         ^|
echo              ^|                                                     ^|
echo              ^|       The first thing to know is that you can       ^|
echo              ^|       view the items you have by checking your      ^|
echo              ^|        bag in a fight or on the Main Screen.        ^|

echo              ^|                                                     ^|
echo              ^|         Of course, you can only hold so many        ^|
echo              ^|       items at a time. That means that you'll       ^|
echo              ^|       have to increase your max inventory and       ^|
echo              ^|          manage your limited carry capacity.        ^|
echo              ^|                                                     ^|
echo              ^|           That's the overview of inventory.         ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto help_items_page_2

:help_items_page_2
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|            ITEMS AND INVENTORY continued            ^|
echo              ^|                                                     ^|
echo              ^|      The only place from which you can interact     ^|
echo              ^|     with the items you've collected is the bag.     ^|
echo              ^|                                                     ^|
echo              ^|      The only things you can do with items are      ^|
echo              ^|         use them, consume them, equip them,         ^|
echo              ^|           unequip them, and discard them.           ^|
echo              ^|                                                     ^|
echo              ^|        To use an item, type "use [item]" and        ^|
echo              ^|                  then press enter.                  ^|
echo              ^|                                                     ^|
echo              ^|      To consume an item, type "consume [item]"      ^|
echo              ^|                and then press enter.                ^|
echo              ^|                                                     ^|
echo              ^|                    ...And so on.                    ^|
echo              ^|                                                     ^|
echo              ^|           You can't get new items if your           ^|
echo              ^|          inventory is at maximum capacity.          ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto help

:zombie_fight_stats
set /a zombieNumber=%zombieNumber% + 1
set /a zombieMaxHealthIncrease=1 + %RANDOM% %% (2 - 1 + 1)
set /a zombieMaxHealth=%zombieMaxHealth% + %zombieMaxHealthIncrease%
set zombieHealth=%zombieMaxHealth%
set /a zombieAccuracy=70 + %RANDOM% %% (99 - 70 + 1)
set /a zombieAccuracy=%zombieAccuracy% - 10*%stat_evasiveness%
set /a zombieMinDamageIncrease=0 + %RANDOM% %% (1 - 0 + 1)
set /a zombieMaxDamageIncrease=0 + %RANDOM% %% (1 - 0 + 1)
set /a zombieMinDamage=%zombieMinDamage% + %zombieMinDamageIncrease%
set /a zombieMaxDamage=%zombieMaxDamage% + %zombieMaxDamageIncrease%

set /a determineZombieType=1 + %RANDOM% %% (15 - 1 + 1)
if %determineZombieType% == 1 (
set zombieType=chef
)
if %determineZombieType% == 2 (
set zombieType=lumberjack
)
if %determineZombieType% == 3 (
set zombieType=farmer
)
if %determineZombieType% == 4 (
set zombieType=doctor
)
if %determineZombieType% == 5 (
set zombieType=housewife
)
if %determineZombieType% == 6 (
set zombieType=butcher
)
if %determineZombieType% == 7 (
set zombieType=baker
)
if %determineZombieType% == 8 (
set zombieType=fisherman
)
if %determineZombieType% == 9 (
set zombieType=teacher
)
if %determineZombieType% == 10 (
set zombieType=biker
)
if %determineZombieType% == 11 (
set zombieType=student
)
if %determineZombieType% == 12 (
set zombieType=child
)
if %determineZombieType% == 13 (
set zombieType=constructionworker
)
if %determineZombieType% == 14 (
set zombieType=officer
)
if %determineZombieType% == 15 (
set zombieType=baseballplayer
)

:zombie_fight
set playerScreen=zombie_fight
set inFight=1
if %yourHealth% LSS 1 goto game_over
cls
echo.
echo   You're fighting a zombie! ^(Zombie #%zombieNumber%^)
if %zombieType% == chef (
echo   This one looks like a chef.
)
if %zombieType% == lumberjack (
echo   This one looks like a lumberjack.
)
if %zombieType% == farmer (
echo   This one looks like a farmer.
)
if %zombieType% == doctor (
echo   This one looks like a doctor.
)
if %zombieType% == housewife (
echo   This one looks like a house wife.
)
if %zombieType% == butcher (
echo   This one looks like a butcher.
)
if %zombieType% == baker (
echo   This one looks like a baker.
)
if %zombieType% == fisherman (
echo   This one looks like a fisherman.
)
if %zombieType% == teacher (
echo   This one looks like a teacher.
)
if %zombieType% == biker (
echo   This one looks like a biker.
)
if %zombieType% == student (
echo   This one looks like a student.
)
if %zombieType% == child (
echo   This one looks like a child.
)
if %zombieType% == constructionworker (
echo   This one looks like a construction worker.
)
if %zombieType% == officer (
echo   This one looks like an officer.
)
if %zombieType% == baseballplayer (
echo   This one looks like a baseball player.
)

echo.
echo   YOUR   HEALTH: %yourHealth%/%yourMaxHealth%
echo   ZOMBIE HEALTH: %zombieHealth%/%zombieMaxHealth%
echo.
echo    1. attack                        YOUR LEVEL: %yourLevel%
echo    2. check bag                     
echo    3. examine zombie
echo    4. help
echo.
echo     [What do you do?]
set input=
set /p input=
if "%input%" == "1" goto attack_zombie_fight
if "%input%" == "2" goto bag_main_screen
if "%input%" == "3" goto examine_zombie_fight
if "%input%" == "4" goto help
if "%input%" == "attack" goto attack_zombie_fight
if "%input%" == "check bag" goto bag_main_screen
if "%input%" == "bag" goto bag_main_screen
if "%input%" == "examine zombie" goto examine_zombie_fight
if "%input%" == "examine" goto examine_zombie_fight
if "%input%" == "help" goto help
goto false_input

:false_input
cls
echo.
echo.
echo              +-----------------------------------------------------+
echo              ^| Sorry; I don't understand what you're trying to do. ^|
echo              ^|                                                     ^|
echo              ^|        If you need help figuring out how to         ^|
echo              ^|      use commands, enter "help" during a fight      ^|
echo              ^|               or on the Main Screen.                ^|
echo              ^|                                                     ^|
echo              ^|       Check for typos and consider rewording.       ^|
echo              +-----------------------------------------------------+
echo.
echo.
echo   Here's what you typed:
echo   "%input%"
echo.
echo.
echo                           [Press any key to continue.]
pause >nul
if %playerScreen% == zombie_fight goto zombie_fight
if %playerScreen% == attack_zombie_fight goto attack_zombie_fight
if %playerScreen% == main_screen goto main_screen
if %playerScreen% == bag_main_screen goto bag_main_screen
if %playerScreen% == help goto help
if %playerSCreen% == allocate_level_points goto allocate_level_points
goto game_crash



:attack_zombie_fight
set playerScreen=attack_zombie_fight
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                You choose to attack.                ^|
echo              +-----------------------------------------------------+
echo.
echo                                   YOUR WEAPONS:
echo                                       fists
echo                                        ---
if %item_axe% GTR 0 (
echo                                        axe
)
if %item_baseballbat% GTR 0 (
echo                                   baseball bat
)
if %item_bone% GTR 0 (
echo                                        bone
)
if %item_brokenbottle% GTR 0 (
echo                                   broken bottle
)
if %item_broomstick% GTR 0 (
echo                                     broomstick
)
if %item_butchersknife% GTR 0 (
echo                                   butcher's knife
)
if %item_butterknife% GTR 0 (
echo                                    butter knife
)
if %item_cheappocketknife% GTR 0 (
echo                                 cheap pocket knife
)
if %item_fishingrod% GTR 0 (
echo                                    fishing rod
)
if %item_fryingpan% GTR 0 (
echo                                     frying pan
)
if %item_glassbottle% GTR 0 (
echo                                    glass bottle
)
if %item_hammer% GTR 0 (
echo                                       hammer
)
if %item_hammerheadshark% GTR 0 (
echo                                  hammerhead shark
)
if %item_hoe% GTR 0 (
echo                                        hoe
)
if %item_pencil% GTR 0 (
echo                                       pencil
)
if %item_pitchfork% GTR 0 (
echo                                     pitchfork
)
if %item_pocketknife% GTR 0 (
echo                                    pocket knife
)
if %item_policebaton% GTR 0 (
echo                                    police baton
)
if %item_rollingpin% GTR 0 (
echo                                    rolling pin
)
if %item_ruler% GTR 0 (
echo                                       ruler
)
if %item_saw% GTR 0 (
echo                                        saw
)
if %item_scalpel% GTR 0 (
echo                                      scalpel
)
if %item_scythe% GTR 0 (
echo                                       scythe
)
if %item_shiv% GTR 0 (
echo                                        shiv
)
if %item_spatula% GTR 0 (
echo                                      spatula
)
if %item_stick% GTR 0 (
echo                                       stick
)
if %item_swordfish% GTR 0 (
echo                                     swordfish
)
if %item_toysword% GTR 0 (
echo                                     toy sword
)
if %item_treebranch% GTR 0 (
echo                                    tree branch
)
if %item_trowel% GTR 0 (
echo                                       trowel
)
if %item_wifflebat% GTR 0 (
echo                                     wiffle bat
)
if %item_wrench% GTR 0 (
echo                                      wrench
)
if %item_yardstick% GTR 0 (
echo                                     yardstick
)
echo.
echo                          With which weapon do you attack?
echo.
echo                     [Type the name of the item with which you
echo                      would like to attack; then press enter.]
set input=
set /p input=
if "%input%" == "1" goto attack_zombie_fight_fists
if "%input%" == "fists" goto attack_zombie_fight_fists
if "%input%" == "fist" goto attack_zombie_fight_fists
if "%input%" == "cpk" goto attack_zombie_fight_cheappocketknife
if "%input%" == "cheap pocket knife" goto attack_zombie_fight_cheappocketknife
if "%input%" == "a" goto attack_zombie_fight_axe
if "%input%" == "axe" goto attack_zombie_fight_axe
if "%input%" == "bbb" goto attack_zombie_fight_baseballbat
if "%input%" == "baseball bat" goto attack_zombie_fight_baseballbat
if "%input%" == "b" goto attack_zombie_fight_bone
if "%input%" == "bone" goto attack_zombie_fight_bone
if "%input%" == "broken bottle" goto attack_zombie_fight_brokenbottle
if "%input%" == "bs" goto attack_zombie_fight_broomstick
if "%input%" == "broomstick" goto attack_zombie_fight_broomstick
if "%input%" == "butcher knife" goto attack_zombie_fight_butchersknife
if "%input%" == "butchers knife" goto attack_zombie_fight_butchersknife
if "%input%" == "butcher's knife" goto attack_zombie_fight_butchersknife
if "%input%" == "butter knife" goto attack_zombie_fight_butterknife
if "%input%" == "fr" goto attack_zombie_fight_fishingrod
if "%input%" == "fishing rod" goto attack_zombie_fight_fishingrod
if "%input%" == "frying pan" goto attack_zombie_fight_fryingpan
if "%input%" == "fp" goto attack_zombie_fight_fryingpan
if "%input%" == "gb" goto attack_zombie_fight_glassbottle
if "%input%" == "glass bottle" goto attack_zombie_fight_glassbottle
if "%input%" == "hammer" goto attack_zombie_fight_hammer
if "%input%" == "hammerhead shark" goto attack_zombie_fight_hammerheadshark
if "%input%" == "hhs" goto attack_zombie_fight_hammerheadshark
if "%input%" == "hammer head shark" goto attack_zombie_fight_hammerheadshark
if "%input%" == "hs" goto attack_zombie_fight_hammerheadshark
if "%input%" == "hoe" goto attack_zombie_fight_hoe
if "%input%" == "p" goto attack_zombie_fight_pencil
if "%input%" == "pencil" goto attack_zombie_fight_pencil
if "%input%" == "pf" goto attack_zombie_fight_pitchfork
if "%input%" == "pitchfork" goto attack_zombie_fight_pitchfork
if "%input%" == "pitch fork" goto attack_zombie_fight_pitchfork
if "%input%" == "pk" goto attack_zombie_fight_pocketknife
if "%input%" == "pocket knife" goto attack_zombie_fight_pocketknife
if "%input%" == "pb" goto attack_zombie_fight_policebaton
if "%input%" == "police baton" goto attack_zombie_fight_policebaton
if "%input%" == "rp" goto attack_zombie_fight_rollingpin
if "%input%" == "rolling pin" goto attack_zombie_fight_rollingpin
if "%input%" == "ruler" goto attack_zombie_fight_ruler
if "%input%" == "r" goto attack_zombie_fight_ruler
if "%input%" == "spatula" goto attack_zombie_fight_spatula
if "%input%" == "saw" goto attack_zombie_fight_saw
if "%input%" == "scalpel" goto attack_zombie_fight_scalpel
if "%input%" == "scythe" goto attack_zombie_fight_scythe
if "%input%" == "shiv" goto attack_zombie_fight_shiv
if "%input%" == "stick" goto attack_zombie_fight_stick
if "%input%" == "swordfish" goto attack_zombie_fight_swordfish
if "%input%" == "sf" goto attack_zombie_fight_swordfish
if "%input%" == "sword fish" goto attack_zombie_fight_swordfish
if "%input%" == "toy sword" goto attack_zombie_fight_toysword
if "%input%" == "ts" goto attack_zombie_fight_toysword
if "%input%" == "tree branch" goto attack_zombie_fight_treebranch
if "%input%" == "tb" goto attack_zombie_fight_treebranch
if "%input%" == "trowel" goto attack_zombie_fight_trowel
if "%input%" == "t" goto attack_zombie_fight_trowel
if "%input%" == "wiffle bat" goto attack_zombie_fight_wifflebat
if "%input%" == "wb" goto attack_zombie_fight_wifflebat
if "%input%" == "wrench" goto attack_zombie_fight_wrench
if "%input%" == "w" goto attack_zombie_fight_wrench
if "%input%" == "yardstick" goto attack_zombie_fight_yardstick
if "%input%" == "yard stick" goto attack_zombie_fight_yardstick
if "%input%" == "y" goto attack_zombie_fight_yardstick
if "%input%" == "ys" goto attack_zombie_fight_yardstick








goto false_input

:attack_zombie_fight_fists
cls
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=%yourMinDamage% + %RANDOM% %% (%yourMaxDamage% - %yourMinDamage% + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|          You lash out with your bare hands,         ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|          You lash out with your bare hands,         ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_cheappocketknife
if %item_cheappocketknife% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=7 + %RANDOM% %% (12 - 7 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|     You slice out with your cheap pocket knife,     ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|           Your cheap pocket knife breaks!           ^|
set /a item_cheappocketknife=%item_cheappocketknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|       You stab at the zombie with your cheap        ^|
echo              ^|          pocket knife, dealing %yourDamage% damage.           ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|           Your cheap pocket knife breaks!           ^|
set /a item_cheappocketknife=%item_cheappocketknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_axe
if %item_axe% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=40 + %RANDOM% %% (50 - 40 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You lash out with your axe,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|                   Your axe breaks!                  ^|
set /a item_axe=%item_axe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You lash out with your axe,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|                   Your axe breaks!                  ^|
set /a item_axe=%item_axe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_baseballbat
if %item_baseballbat% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=20 + %RANDOM% %% (25 - 20 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the baseball bat,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|              Your baseball bat breaks!              ^|
set /a item_baseballbat=%item_baseballbat% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the baseball bat,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|              Your baseball bat breaks!              ^|
set /a item_baseballbat=%item_baseballbat% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_bone
if %item_bone% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=10 + %RANDOM% %% (13 - 10 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swing the bone,                 ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|                  Your bone breaks!                  ^|
set /a item_bone=%item_bone% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swing the bone,                 ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|                  Your bone breaks!                  ^|
set /a item_bone=%item_bone% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_brokenbottle
if %item_brokenbottle% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=18 + %RANDOM% %% (23 - 18 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You lash out with the broken             ^|
echo              ^|              bottle, dealing %yourDamage% damage.              ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|              Your broken bottle breaks!             ^|
set /a item_brokenbottle=%item_brokenbottle% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You lash out with the broken             ^|
echo              ^|              bottle, dealing %yourDamage% damage.             ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|              Your broken bottle breaks!             ^|
set /a item_brokenbottle=%item_brokenbottle% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_broomstick
if %item_broomstick% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=10 + %RANDOM% %% (18 - 10 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the broomstick,              ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|               Your broomstick breaks!               ^|
set /a item_broomstick=%item_broomstick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the broomstick,              ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|               Your broomstick breaks!               ^|
set /a item_broomstick=%item_broomstick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_butchersknife
if %item_butchersknife% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=18 + %RANDOM% %% (22 - 18 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You slice with the butcher's             ^|
echo              ^|              knife, dealing %yourDamage% damage.               ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|             Your butcher's knife breaks!            ^|
set /a item_butchersknife=%item_butchersknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You slice with the butcher's             ^|
echo              ^|              knife, dealing %yourDamage% damage.              ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|             Your butcher's knife breaks!            ^|
set /a item_butchersknife=%item_butchersknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_butterknife
if %item_butterknife% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=5 + %RANDOM% %% (12 - 5 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You slice with the butter              ^|
echo              ^|              knife, dealing %yourDamage% damage.               ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|              Your butter knife breaks!              ^|
set /a item_butterknife=%item_butterknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You slice with the butter              ^|
echo              ^|              knife, dealing %yourDamage% damage.              ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|              Your butter knife breaks!              ^|
set /a item_butterknife=%item_butterknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_fishingrod
if %item_fishingrod% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=15 + %RANDOM% %% (17 - 15 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the fishing rod,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|               Your fishing rod breaks!              ^|
set /a item_fishingrod=%item_fishingrod% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the fishing rod,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|               Your fishing rod breaks!              ^|
set /a item_fishingrod=%item_fishingrod% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_fryingpan
if %item_fryingpan% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=12 + %RANDOM% %% (14 - 12 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the frying pan,              ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|               Your frying pan breaks!               ^|
set /a item_fryingpan=%item_fryingpan% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swing the frying pan,              ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|               Your frying pan breaks!               ^|
set /a item_fryingpan=%item_fryingpan% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_glassbottle
if %item_glassbottle% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=10 + %RANDOM% %% (12 - 10 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the glass bottle,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|              Your glass bottle breaks!              ^|
echo              ^|                  +1 Broken Bottle!                  ^|
set /a item_glassbottle=%item_glassbottle% - 1
set /a item_brokenbottle=%item_brokenbottle% + 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the glass bottle,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|              Your glass bottle breaks!              ^|
echo              ^|                  +1 Broken Bottle!                  ^|
set /a item_glassbottle=%item_glassbottle% - 1
set /a item_brokenbottle=%item_brokenbottle% + 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_hammer
if %item_hammer% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=15 + %RANDOM% %% (25 - 15 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You sling the hammer,                ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your hammer breaks!                 ^|
set /a item_hammer=%item_hammer% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You sling the hammer,                ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your hammer breaks!                 ^|
set /a item_hammer=%item_hammer% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_hammerheadshark
if %item_hammerheadshark% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=30 + %RANDOM% %% (35 - 30 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|           You sling the hammerhead shark,           ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 99 (
echo              ^|                                                     ^|
echo              ^|            Your hammerhead shark breaks!            ^|
set /a item_hammerheadshark=%item_hammerheadshark% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|           You sling the hammerhead shark,           ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 99 (
echo              ^|                                                     ^|
echo              ^|            Your hammerhead shark breaks!            ^|
set /a item_hammerheadshark=%item_hammerheadshark% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_hoe
if %item_hoe% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=14 + %RANDOM% %% (18 - 14 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                  You swing the hoe,                 ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                   Your hoe breaks!                  ^|
set /a item_hoe=%item_hoe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                  You swing the hoe,                 ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                   Your hoe breaks!                  ^|
set /a item_hoe=%item_hoe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_pencil
if %item_pencil% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=6 + %RANDOM% %% (10 - 6 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|     You poke with the pencil, dealing %yourDamage% damage.     ^|
if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|                 Your pencil breaks!                 ^|
set /a item_pencil=%item_pencil% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|     You poke with the pencil, dealing %yourDamage% damage.    ^|

if %weaponBreak% GTR 85 (
echo              ^|                                                     ^|
echo              ^|                 Your pencil breaks!                 ^|
set /a item_pencil=%item_pencil% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_pitchfork
if %item_pitchfork% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=35 + %RANDOM% %% (40 - 35 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You swing the pitchfork,              ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                Your pitchfork breaks!               ^|
set /a item_pitchfork=%item_pitchfork% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You swing the pitchfork,              ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                Your pitchfork breaks!               ^|
set /a item_pitchfork=%item_pitchfork% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_pocketknife
if %item_pocketknife% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=9 + %RANDOM% %% (14 - 9 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the pocket knife,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|              Your pocket knife breaks!              ^|
set /a item_pocketknife=%item_pocketknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the pocket knife,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|              Your pocket knife breaks!              ^|
set /a item_pocketknife=%item_pocketknife% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_policebaton
if %item_policebaton% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=6 + %RANDOM% %% (12 - 6 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|          You attack with the police baton,          ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|              The police baton breaks!               ^|
set /a item_policebaton=%item_policebaton% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|       You swipe at the zombie with the police       ^|
echo              ^|              baton, dealing %yourDamage% damage.              ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|              The police baton breaks!               ^|
set /a item_policebaton=%item_policebaton% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_rollingpin
if %item_rollingpin% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=15 + %RANDOM% %% (16 - 15 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|          You jab out with the rolling pin,          ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|               Your rolling pin breaks!              ^|
set /a item_rollingpin=%item_rollingpin% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|          You jab out with the rolling pin,          ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|               Your rolling pin breaks!              ^|
set /a item_rollingpin=%item_rollingpin% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_ruler
if %item_ruler% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=8 + %RANDOM% %% (10 - 8 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swipe the ruler,                ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|                  Your ruler breaks!                 ^|
set /a item_ruler=%item_ruler% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swipe the ruler,                ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|                  Your ruler breaks!                 ^|
set /a item_ruler=%item_ruler% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_spatula
if %item_spatula% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=12 + %RANDOM% %% (17 - 12 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swipe the spatula,               ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your spatula breaks!                ^|
set /a item_spatula=%item_spatula% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swipe the spatula,               ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your spatula breaks!                ^|
set /a item_spatula=%item_spatula% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_saw
if %item_saw% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=26 + %RANDOM% %% (31 - 26 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You slice with the saw,               ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                   Your saw breaks!                  ^|
set /a item_saw=%item_saw% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You slice with the saw,               ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                   Your saw breaks!                  ^|
set /a item_saw=%item_saw% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_scalpel
if %item_scalpel% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=11 + %RANDOM% %% (14 - 11 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You poke with the scalpel,             ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|                 Your scalpel breaks!                ^|
set /a item_scalpel=%item_scalpel% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You slice with the scalpel,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|                 Your scalpel breaks!                ^|
set /a item_scalpel=%item_scalpel% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_scythe
if %item_scythe% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=31 + %RANDOM% %% (36 - 31 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swing the scythe,                ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your scythe breaks!                 ^|
set /a item_scythe=%item_scythe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swing the scythe,                ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your scythe breaks!                 ^|
set /a item_scythe=%item_scythe% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_shiv
if %item_shiv% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=8 + %RANDOM% %% (12 - 8 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swing the shiv,                 ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                  Your shiv breaks!                  ^|
set /a item_shiv=%item_shiv% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swing the shiv,                 ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                  Your shiv breaks!                  ^|
set /a item_shiv=%item_shiv% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_stick
if %item_stick% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=6 + %RANDOM% %% (10 - 6 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You flail the stick,                ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 40 (
echo              ^|                                                     ^|
echo              ^|                  Your stick breaks!                 ^|
set /a item_stick=%item_stick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 You swing the stick,                ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 40 (
echo              ^|                                                     ^|
echo              ^|                  Your stick breaks!                 ^|
set /a item_stick=%item_stick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_swordfish
if %item_swordfish% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=28 + %RANDOM% %% (33 - 28 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You stab with the swordfish,            ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 99 (
echo              ^|                                                     ^|
echo              ^|                Your swordfish breaks!               ^|
set /a item_swordfish=%item_swordfish% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You stab with the swordfish,            ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 99 (
echo              ^|                                                     ^|
echo              ^|                Your swordfish breaks!               ^|
set /a item_swordfish=%item_swordfish% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_toysword
if %item_toysword% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=12 + %RANDOM% %% (17 - 12 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You stab with the toy sword,            ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                Your toy sword breaks!               ^|
set /a item_toysword=%item_toysword% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|            You slash with the toy sword,            ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                Your toy sword breaks!               ^|
set /a item_toysword=%item_toysword% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_treebranch
if %item_treebranch% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=10 + %RANDOM% %% (12 - 10 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the tree branch,              ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|              Your tree branch breaks!               ^|
echo              ^|                     +2 Sticks!                      ^|
set /a item_treebranch=%item_treebranch% - 1
set /a item_stick=%item_stick% + 2
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|             You swing the tree branch,              ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 60 (
echo              ^|                                                     ^|
echo              ^|              Your tree branch breaks!               ^|
echo              ^|                     +2 Sticks!                      ^|
set /a item_treebranch=%item_treebranch% - 1
set /a items
set /a item_stick=%item_stick% + 2
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_trowel
if %item_trowel% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=13 + %RANDOM% %% (19 - 13 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You poke with the trowel,              ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your trowel breaks!                 ^|
set /a item_trowel=%item_trowel% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You swipe with the trowel,             ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|                 Your trowel breaks!                 ^|
set /a item_trowel=%item_trowel% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_wifflebat
if %item_wifflebat% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=9 + %RANDOM% %% (16 - 9 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You wave the wiffle bat,               ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|               Your wiffle bat breaks!               ^|
set /a item_wifflebat=%item_wifflebat% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|              You wave the wiffle bat,               ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 90 (
echo              ^|                                                     ^|
echo              ^|               Your wiffle bat breaks!               ^|
set /a item_wifflebat=%item_wifflebat% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_wrench
if %item_wrench% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=16 + %RANDOM% %% (22 - 16 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swing the wrench,                ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|                 Your wrench breaks!                 ^|
set /a item_wrench=%item_wrench% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                You swing the wrench,                ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 95 (
echo              ^|                                                     ^|
echo              ^|                 Your wrench breaks!                 ^|
set /a item_wrench=%item_wrench% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:attack_zombie_fight_yardstick
if %item_yardstick% LSS 1 goto false_input
cls
set /a weaponBreak=1 + %RANDOM% %% (100 - 1 + 1)
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %localAccuracy% goto your_attack_misses
set /a yourDamage=12 + %RANDOM% %% (15 - 12 + 1)
if %yourDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You wave the yardstick,               ^|
echo              ^|                  dealing %yourDamage% damage.                  ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                Your yardstick breaks!               ^|
set /a item_yardstick=%item_yardstick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
if %yourDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|               You wave the yardstick,               ^|
echo              ^|                  dealing %yourDamage% damage.                 ^|
if %weaponBreak% GTR 80 (
echo              ^|                                                     ^|
echo              ^|                Your yardstick breaks!               ^|
set /a item_yardstick=%item_yardstick% - 1
set /a items=%items% - 1
)
echo              +-----------------------------------------------------+
)
set /a zombieHealth=%zombieHealth% - %yourDamage%
if %zombieHealth% LSS 1 goto fight_won
goto zombie_turn_fight

:your_attack_misses
echo.
echo              +-----------------------------------------------------+
echo              ^|                 Your attack misses!                 ^|
echo              +-----------------------------------------------------+
goto zombie_turn_fight

:zombie_turn_fight
set /a hitOrMiss=1 + %RANDOM% %% (100 - 1 + 1)
if %hitOrMiss% GTR %zombieAccuracy% goto zombie_attack_misses
set /a zombieDamage=%zombieMinDamage% + %RANDOM% %% (%zombieMaxDamage% - %zombieMinDamage% + 1)
if %stat_resolve% == 1 goto calculate_resolveDamageReduction_1
if %stat_resolve% == 2 goto calculate_resolveDamageReduction_2
if %stat_resolve% == 3 goto calculate_resolveDamageReduction_3
:zombie_turn_fight_aftercalculating_resolveDamageReduction
if %zombieDamage% LSS 10 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 The zombie attacks,                 ^|
echo              ^|                  dealing %zombieDamage% damage.                  ^|
echo              +-----------------------------------------------------+
)
if %zombieDamage% GTR 9 (
echo.
echo              +-----------------------------------------------------+
echo              ^|                 The zombie attacks,                 ^|
echo              ^|                  dealing %zombieDamage% damage.                 ^|
echo              +-----------------------------------------------------+
)
set /a yourHealth=%yourHealth% - %zombieDamage%
if %yourHealth% LSS 1 goto game_over
echo.
echo                           [Press any key to continue.]
pause >nul
goto zombie_fight

:calculate_resolveDamageReduction_1
set /a resolveDamageReduction=%zombieDamage%/10
set /a zombieDamage=%zombieDamage% - %resolveDamageReduction%
goto zombie_turn_fight_aftercalculating_resolveDamageReduction

:calculate_resolveDamageReduction_2
set /a resolveDamageReduction=%zombieDamage%/8
set /a zombieDamage=%zombieDamage% - %resolveDamageReduction%
goto zombie_turn_fight_aftercalculating_resolveDamageReduction

:calculate_resolveDamageReduction_3
set /a resolveDamageReduction=%zombieDamage%/5
set /a zombieDamage=%zombieDamage% - %resolveDamageReduction%
goto zombie_turn_fight_aftercalculating_resolveDamageReduction

:zombie_attack_misses
echo.
echo              +-----------------------------------------------------+
echo              ^|             The zombie's attack misses!             ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto zombie_fight

:fight_won
set /a zombiesSlain=%zombiesSlain% + 1
set /a expGain=25 + %RANDOM% %% (65 - 45 + 1)
if %zombieType% == lumberjack (
set /a expGain=%expGain%*5
set /a expGain=%expGain%/3
)
if %zombieType% == student (
set /a expGain=%expGain%*3
set /a expGain=%expGain%/5
)
if %zombieType% == child (
set /a expGain=%expGain%*3
set /a expGain=%expGain%/5
)
set localAccuracy=%accuracy%
if not %statuseffect_foodpoisoning% == 0 (
set /a statuseffect_foodpoisoning=%statuseffect_foodpoisoning% - 1
)
set firstTierWeaponChance=0
set secondTierWeaponChance=0
set thirdTierWeaponChance=0
set /a whichWeaponDrop=1 + %RANDOM% %% (2 - 1 + 1)
set firstTierFoodChance=0
set secondTierFoodChance=0
set thirdTierFoodChance=0
set /a whichFoodDrop=1 + %RANDOM% %% (2 - 1 + 1)

if %yourLevel% GTR 1 goto determine_firstTierWeaponChance
:check_level_for_determine_secondTierWeaponChance
if %yourLevel% GTR 8 goto determine_secondTierWeaponChance
:check_level_for_determine_thirdTierWeaponChance
if %yourLevel% GTR 15 goto determine_thirdTierWeaponChance
:after_check_for_determine_thirdTierWeaponChance
if %yourLevel% GTR 0 goto determine_firstTierFoodChance
:check_level_for_determine_secondTierFoodChance
if %yourLevel% GTR 8 goto determine_secondTierFoodChance
:check_level_for_determine_thirdTierFoodChance
if %yourLevel% GTR 15 goto determine_thirdTierFoodChance
:after_check_for_determine_thirdTierFoodChance
goto fight_won_says_youveslainthezombie

:determine_firstTierFoodChance
set /a firstTierFoodChance=1 + %RANDOM% %% (1 - 1 + 1)
goto check_level_for_determine_secondTierFoodChance

:determine_secondTierFoodChance
set /a secondTierFoodChance=1 + %RANDOM% %% (2 - 1 + 1)
goto check_level_for_determine_thirdTierFoodChance

:determine_thirdTierFoodChance
set /a thirdTierFoodChance=1 + %RANDOM% %% (2 - 1 + 1)
goto after_check_for_determine_thirdTierFoodChance

:determine_firstTierWeaponChance
set /a firstTierWeaponChance=1 + %RANDOM% %% (2 - 1 + 1)
goto check_level_for_determine_secondTierWeaponChance

:determine_secondTierWeaponChance
set /a secondTierWeaponChance=1 + %RANDOM% %% (2 - 1 + 1)
goto check_level_for_determine_thirdTierWeaponChance

:determine_thirdTierWeaponChance
set /a thirdTierWeaponChance=1 + %RANDOM% %% (2 - 1 + 1)
goto after_check_for_determine_thirdTierWeaponChance

:fight_won_says_youveslainthezombie
echo.
echo              +-----------------------------------------------------+
echo              ^|               You've slain the zombie!              ^|
if not %items% LSS %maxInventory% goto resolve_fight_bag_full
if %zombieType% == null (
echo              ^|                  +1 Pack of Raisins                 ^|
set /a item_packofraisins=%item_packofraisins% + 1
set /a items=%items% + 1
)
if %zombieType% == chef goto rewards_zombieType_chef
if %zombieType% == lumberjack goto rewards_zombieType_lumberjack
if %zombieType% == farmer goto rewards_zombieType_farmer
if %zombieType% == doctor goto rewards_zombieType_doctor
if %zombieType% == housewife goto rewards_zombieType_housewife
if %zombieType% == butcher goto rewards_zombieType_butcher
if %zombieType% == baker goto rewards_zombieType_baker
if %zombieType% == fisherman goto rewards_zombieType_fisherman
if %zombieType% == teacher goto rewards_zombieType_teacher
if %zombieType% == biker goto rewards_zombieType_biker
if %zombieType% == student goto rewards_zombieType_student
if %zombieType% == child goto rewards_zombieType_child
if %zombieType% == constructionworker goto rewards_zombieType_constructionworker
if %zombieType% == officer goto rewards_zombieType_officer
if %zombieType% == baseballplayer goto rewards_zombieType_baseballplayer

:experience_gain_fight_won
echo              ^|                       +%expGain% exp.                      ^|
set /a exp=%exp% + %expGain%
goto level_calculator

:resolve_fight_won
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
set inFight=0
goto main_screen

:resolve_fight_bag_full
echo              ^|                  Your bag is full...                ^|
goto experience_gain_fight_won

:rewards_zombieType_chef
if %firstTierFoodChance% == 1 (
echo              ^|                      +1 Carrot                      ^|
set /a item_carrot=%item_carrot% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                      +1 Sushi                       ^|
set /a item_sushi=%item_sushi% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                      +1 Salmon                      ^|
set /a item_salmon=%item_salmon% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Butter Knife                   ^|
set /a item_butterknife=%item_butterknife% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                     +1 Spatula                      ^|
set /a item_spatula=%item_spatula% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                    +1 Frying Pan                    ^|
set /a item_fyingpan=%item_fryingpan% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_lumberjack
if %firstTierFoodChance% == 1 (
echo              ^|                      +1 Apple                       ^|
set /a item_apple=%item_apple% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                 +1 Pack of Raisins                  ^|
set /a item_packofraisins=%item_packofraisins% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                    +1 Bag Lunch                     ^|
set /a item_baglunch=%item_baglunch% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Tree Branch                    ^|
set /a item_treebranch=%item_treebranch% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                       +1 Saw                        ^|
set /a item_saw=%item_saw% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
if %whichWeaponDrop% == 1 (
echo              ^|                       +1 Axe                        ^|
set /a item_axe=%item_axe% + 1
set /a items=%items% + 1
)
if %whichWeaponDrop% == 2 (
echo              ^|                     +1 Chainsaw                     ^|
set /a item_chainsaw=%item_chainsaw% + 1
set /a items=%items% + 1
)
)
goto experience_gain_fight_won

:rewards_zombieType_farmer
if %firstTierFoodChance% == 1 (
echo              ^|                      +1 Carrot                      ^|
set /a item_carrot=%item_carrot% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                      +1 Apple                       ^|
set /a item_apple=%item_apple% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                  +1 Bottle of Milk                  ^|
set /a item_bottleofmilk=%item_bottleofmilk% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                      +1 Trowel                      ^|
set /a item_trowel=%item_trowel% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
if %whichWeaponDrop% == 1 (
echo              ^|                       +1 Hoe                        ^|
set /a item_hoe=%item_hoe% + 1
set /a items=%items% + 1
)
if %whichWeaponDrop% == 2 (
echo              ^|                      +1 Scythe                      ^|
set /a item_scythe=%item_scythe% + 1
set /a items=%items% + 1
)
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                    +1 Pitchfork                     ^|
set /a item_pitchfork=%item_pitchfork% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_doctor
set /a firstAidKitFromDoctor=1 + %RANDOM% %% (4 - 1 + 1)
if %firstAidKitFromDoctor% == 1 (
echo              ^|                   +1 First Aid Kit                  ^|
set /a item_firstaidkit=%item_firstaidkit% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                     +1 Scalpel                      ^|
set /a item_scalpel=%item_scalpel% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_housewife
if %firstTierFoodChance% == 1 (
echo              ^|                   +1 Cookie Dough                   ^|
set /a item_cookiedough=%item_cookiedough% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
if %whichFoodDrop% == 1 (
echo              ^|                   +1 Ham Sandwich                   ^|
set /a item_hamsandwich=%item_hamsandwich% + 1
set /a items=%items% + 1
)
if %whichFoodDrop% == 2 (
echo              ^|                +1 Egg Salad Sandwich                ^|
set /a item_eggsaladsandwich=%item_eggsaladsandwich% + 1
set /a items=%items% + 1
)
)
if %thirdTierFoodChance% == 1 (
echo              ^|                       +1 Pie                        ^|
set /a item_pie=%item_pie% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Rolling Pin                    ^|
set /a item_rollingpin=%item_rollingpin% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                    +1 Broomstick                    ^|
set /a item_broomstick=%item_broomstick% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                 +1 Butcher's Knife                  ^|
set /a item_butchersknife=%item_butchersknife% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_butcher
if %firstTierFoodChance% == 1 (
echo              ^|                   +1 Ham Sandwich                   ^|
set /a item_hamsandwich=%item_hamsandwich% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                   +1 Mystery Meat                   ^|
set /a item_mysterymeat=%item_mysterymeat% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                      +1 Fillet                      ^|
set /a item_fillet=%item_fillet% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                       +1 Bone                       ^|
set /a item_bone=%item_bone% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                 +1 Butcher's Knife                  ^|
set /a item_butchersknife=%item_butchersknife% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                       +1 Saw                        ^|
set /a item_saw=%item_saw% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_baker
if %firstTierFoodChance% == 1 (
if %whichFoodDrop% == 1 (
echo              ^|                      +1 Donut                       ^|
set /a item_donut=%item_donut% + 1
set /a items=%items% + 1
)
if %whichFoodDrop% == 2 (
echo              ^|                      +1 Bread                       ^|
set /a item_bread=%item_bread% + 1
set /a items=%items% + 1
)
)
if %secondTierFoodChance% == 1 (
if %whichFoodDrop% == 1 (
echo              ^|                  +1 Piece of Cake                   ^|
set /a item_pieceofcake=%item_pieceofcake% + 1
set /a items=%items% + 1
)
if %whichFoodDrop% == 2 (
echo              ^|                   +1 Cookie Dough                   ^|
set /a item_cookiedough=%item_cookiedough% + 1
set /a items=%items% + 1
)
)
if %thirdTierFoodChance% == 1 (
echo              ^|                       +1 Pie                        ^|
set /a item_pie=%item_pie% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Butter Knife                   ^|
set /a item_butterknife=%item_butterknife% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Rolling Pin                    ^|
set /a item_rollingpin=%item_rollingpin% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_fisherman
if %firstTierFoodChance% == 1 (
echo              ^|                 +1 Can of Sardines                  ^|
set /a item_canofsardines=%item_canofsardines% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                      +1 Sushi                       ^|
set /a item_sushi=%item_sushi% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                      +1 Salmon                      ^|
set /a item_salmon=%item_salmon% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Fishing Rod                    ^|
set /a item_fishingrod=%item_fishingrod% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                    +1 Swordfish                     ^|
set /a item_swordfish=%item_swordfish% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                 +1 Hammerhead Shark                 ^|
set /a item_hammerheadshark=%item_hammerheadshark% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_teacher
if %firstTierFoodChance% == 1 (
echo              ^|                      +1 Apple                       ^|
set /a item_apple=%item_apple% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                +1 Egg Salad Sandwich                ^|
set /a item_eggsaladsandwich=%item_eggsaladsandwich% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                   +1 To-go Salad                    ^|
set /a item_togosalad=%item_togosalad% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                      +1 Ruler                       ^|
set /a item_ruler=%item_ruler% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                    +1 Yardstick                     ^|
set /a item_yardstick=%item_yardstick% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                     +3 Pencils                      ^|
set /a item_pencil=%item_pencil% + 3
set /a items=%items% + 3
)
goto experience_gain_fight_won

:rewards_zombieType_biker
if %firstTierFoodChance% == 1 (
echo              ^|                       +1 Booze                      ^|
set /a item_booze=%item_booze% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                +1 Egg Salad Sandwich                ^|
set /a item_eggsaladsandwich=%item_eggsaladsandwich% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                +1 Chili Cheese Fries                ^|
set /a item_chilicheesefries=%item_chilicheesefries% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                       +1 Shiv                       ^|
set /a item_shiv=%item_shiv% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                      +1 Wrench                      ^|
set /a item_wrench=%item_wrench% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_student
if %firstTierFoodChance% == 1 (
echo              ^|                  +1 Piece of Candy                  ^|
set /a item_pieceofcandy=%item_pieceofcandy% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                 +1 Pack of Raisins                  ^|
set /a item_packofraisins=%item_packofraisins% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                    +1 Bag Lunch                     ^|
set /a item_baglunch=%item_baglunch% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                      +1 Pencil                      ^|
set /a item_pencil=%item_pencil% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                      +1 Ruler                       ^|
set /a item_ruler=%item_ruler% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                     +2 Pencils                      ^|
set /a item_pencil=%item_pencil% + 2
set /a items=%items% + 2
)
goto experience_gain_fight_won

:rewards_zombieType_child
if %firstTierFoodChance% == 1 (
echo              ^|                    +1 Bubblegum                     ^|
set /a item_bubblegum=%item_bubblegum% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                  +1 Piece of Candy                  ^|
set /a item_pieceofcandy=%item_pieceofcandy% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                    +1 Juice Box                     ^|
set /a item_juicebox=%item_juicebox% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                    +1 Wiffle Bat                    ^|
set /a item_wifflebat=%item_wifflebat% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                    +1 Toy Sword                     ^|
set /a item_toysword=%item_toysword% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                   +1 Pocket Knife                   ^|
set /a item_pocketknife=%item_pocketknife% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_constructionworker
if %firstTierFoodChance% == 1 (
echo              ^|                 +1 Pack of Raisins                  ^|
set /a item_packofraisins=%item_packofraisins% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                +1 Egg Salad Sandwich                ^|
set /a item_eggsaladsandwich=%item_eggsaladsandwich% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                    +1 Bag Lunch                     ^|
set /a item_baglunch=%item_baglunch% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                      +1 Hammer                      ^|
set /a item_hammer=%item_hammer% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                      +1 Wrench                      ^|
set /a item_wrench=%item_wrench% + 1
set /a items=%items% + 1
)
if %thirdTierWeaponChance% == 1 (
echo              ^|                       +1 Saw                        ^|
set /a item_saw=%item_saw% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_officer
if %firstTierFoodChance% == 1 (
echo              ^|                      +1 Donut                       ^|
set /a item_donut=%item_donut% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                +1 Egg Salad Sandwich                ^|
set /a item_eggsaladsandwich=%item_eggsaladsandwich% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                      +1 Coffee                      ^|
set /a item_coffee=%item_coffee% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                   +1 Police Baton                   ^|
set /a item_policebaton=%item_policebaton% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:rewards_zombieType_baseballplayer
if %firstTierFoodChance% == 1 (
echo              ^|                    +1 Bubblegum                     ^|
set /a item_bubblegum=%item_bubblegum% + 1
set /a items=%items% + 1
)
if %secondTierFoodChance% == 1 (
echo              ^|                   +1 Granola Bar                    ^|
set /a item_granolabar=%item_granolabar% + 1
set /a items=%items% + 1
)
if %thirdTierFoodChance% == 1 (
echo              ^|                      +1 Hotdog                      ^|
set /a item_hotdog=%item_hotdog% + 1
set /a items=%items% + 1
)
if %firstTierWeaponChance% == 1 (
echo              ^|                    +1 Wiffle Bat                    ^|
set /a item_wifflebat=%item_wifflebat% + 1
set /a items=%items% + 1
)
if %secondTierWeaponChance% == 1 (
echo              ^|                   +1 Baseball Bat                   ^|
set /a item_baseballbat=%item_baseballbat% + 1
set /a items=%items% + 1
)
goto experience_gain_fight_won

:level_calculator
if %yourLevel% == 1 (
if %exp% GTR 75 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 1 to 2.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 2 (
if %exp% GTR 165 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 2 to 3.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 3 (
if %exp% GTR 270 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 3 to 4.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 4 (
if %exp% GTR 390 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 4 to 5.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 5 (
if %exp% GTR 525 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 5 to 6.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 6 (
if %exp% GTR 675 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 6 to 7.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 7 (
if %exp% GTR 840 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 7 to 8.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 8 (
if %exp% GTR 1020 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|          Your level has risen from 8 to 9.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 9 (
if %exp% GTR 1215 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 9 to 10.          ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 10 (
if %exp% GTR 1435 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 10 to 11.         ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 11 (
if %exp% GTR 1660 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 11 to 12.         ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 12 (
if %exp% GTR 1800 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 12 to 13.         ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 13 (
if %exp% GTR 2055 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 13 to 14.         ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
if %yourLevel% == 14 (
if %exp% GTR 2325 (
echo              ^|                                                     ^|
echo              ^|                    You level up!                    ^|
echo              ^|         Your level has risen from 14 to 15.         ^|
set /a yourLevel=%yourLevel% + 1
set /a levelPoints=%levelPoints% + 1
goto levelup_damage_buff
)
)
goto resolve_fight_won

:levelup_damage_buff
set /a yourMinDamageLevelIncrease=0 + %RANDOM% %% (1 - 0 + 1)
set /a yourMinDamage=%yourMinDamage% + %yourMinDamageLevelIncrease%
set /a yourMaxDamageLevelIncrease=0 + %RANDOM% %% (1 - 0 + 1)
set /a yourMaxDamage=%yourMaxDamage% + %yourMaxDamageLevelIncrease%
goto level_calculator

:examine_zombie_fight
cls
echo.
echo              +-----------------------------------------------------+
echo              ^|                   It's a zombie!                    ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
goto zombie_fight

:game_over
echo.
echo              +-----------------------------------------------------+
echo              ^|                         ...                         ^|
echo              +-----------------------------------------------------+
echo.
echo                           [Press any key to continue.]
pause >nul
cls
echo.
echo.
echo.
echo                         ______  ______    _   _  ______
echo                        /\  _  \/\  __ \  / \_/ \/\  __ \    
echo                        \ \ \ \_\ \ \_\ \/\      \ \ \_\_\  
echo                         \ \ \/_/\ \  _  \ \ \__\ \ \  __\_
echo                          \ \     \ \ \ \ \ \ \ /\ \ \ \_\ \
echo                           \ \____/\ \_\ \_\ \_\\ \_\ \____/
echo                            \/___/  \/_/\/_/\/_/ \/_/\/___/ 
echo.
echo                            ______  __  __  ______  ______     
echo                           /\  __ \/\ \/\ \/\  __ \/\  __ \     
echo                           \ \ \/\ \ \ \ \ \ \ \_\_\ \ \_\ \   
echo                            \ \ \ \ \ \ \ \ \ \  __\_ \  __/_  
echo                             \ \ \_\ \ \ \_/ \ \ \_\ \ \ \ \ \  
echo                              \ \_____\ \___/ \ \____/\ \_\ \_\
echo                               \/_____/\/__/   \/___/  \/_/\/_/
echo.
echo.
echo                                You killed %zombiesSlain% zombies.
if %zombiesSlain% LSS 4 (
echo                                   LOSER status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 6 (
echo                                    NOOB status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 8 (
echo                                  RESISTER status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 11 (
echo                                 INTERMEDIATE status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 16 (
echo                                   BADASS status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 20 (
echo                                   VETERAN status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 26 (
echo                                    HERO status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
if %zombiesSlain% LSS 31 (
echo                                   LEGEND status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game
)
echo                                   GODLIKE status!
echo.
echo                           [Press any key to continue.]
pause >nul
goto new_game

:game_crash
echo.
echo   Oops, there was an error.
echo   Tell Yustin what happened, then close the game.
pause
exit


