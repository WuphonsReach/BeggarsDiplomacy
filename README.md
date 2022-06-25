# BeggarsDiplomacy

BeggarsDiplomacy is a mod for [Mount & Blade: Warband](https://store.steampowered.com/app/48700?snr=2_100100_100101_100103_apphubheader) that is based on the Diplomacy/DIPLADO mod fork.  

The goal of BeggarsDiplomacy is to take the improvements from [DIPLADO develop](https://github.com/diegoami/Diplado/tree/develop) and go further.  Fixing any outstanding bugs and improving the game balance to be less grindy.  I have also attempt to add in comments in both the Python files and the commit history to help with future work, or explaining how a particular bug was fixed.  There are also small feature enhancements aimed at making the underlying systems more robust.

## Contents

- [BeggarsDiplomacy](#beggarsdiplomacy)
  - [Contents](#contents)
  - [Features](#features)
    - [Quality of Life](#quality-of-life)
    - [Making Money](#making-money)
    - [Balance](#balance)
    - [Politics](#politics)
  - [Goods Prices](#goods-prices)
  - [Installation](#installation)
    - [Download](#download)
    - [Installing](#installing)
    - [Using the mod](#using-the-mod)
  - [Changes](#changes)
    - [DPLMC_AI_CHANGES_HIGH](#dplmc_ai_changes_high)
    - [DPLMC_GOLD_CHANGES_LOW](#dplmc_gold_changes_low)
    - [DPLMC_GOLD_CHANGES_MEDIUM](#dplmc_gold_changes_medium)
    - [DPLMC_GOLD_CHANGES_HIGH](#dplmc_gold_changes_high)
    - [Miscellaneous](#miscellaneous)
    - [Experiments](#experiments)
    - [Balance (Towns)](#balance-towns)
    - [Balance (Villages)](#balance-villages)
    - [Balance (Misc Quests)](#balance-misc-quests)
    - [Balance (Parties)](#balance-parties)
    - [Bug Fixes](#bug-fixes)
  - [Making Changes](#making-changes)
  - [References](#references)
  - [Parentage](#parentage)
  - [Credits](#credits)

## Features

Almost all features listed here require that DPLMC_GOLD_CHANGES_HIGH and DPLMC_AI_CHANGES_HIGH be selected in the Diplomacy Preferences from the Camp menu.  "High" is now the default in BeggarsDiplomacy instead of "Low".  Other features / balance changes are always active.

### Quality of Life

- Cattle herds can be dragged across the map (following the player party) instead of driving them.  But you need to have enough hands in your party to handle the size of the herd.

### Making Money

In general, it is easier to make money in BeggarsDiplomacy but food is more expensive.

- Trade good prices are higher, making moving goods between towns worthwhile.  Towns and villages also carry more inventory.
- Town businesses that the player can invest in are more competitive with each other.  There are two to four good options in a town instead of only one.  The average net income for businesses is higher.  This is offset by requiring the player to raise relations with the town, plus the town's owner, plus the kingdom's liege.
- Most quests reward more gold/denars and/or XP than before.
- Taking prisoners is still a good source of income, as is loot from battles.
- Bandit lairs and merchant caravans drop more goods as loot.
- Towns, castles and villages pay out more in rent income, but only at higher levels of prosperity.
- Kingdoms pay higher mercenary wages (depending on troop strength, renown, etc.).

### Balance

- Lords and lieges (kings/queens) are more stingy about letting you setup a business in a town that they control.
- Some food is more expensive, but the morale bonuses have also been balanced a bit.
- Patrols that the player hires are less expensive to maintain.

### Politics

- Truces now last 60 days, but can be cut short by border incidents.  Treaties (trade, defense, alliance) last for 90 days.  Trade treaties are fragile and can also be cut short by border incidents.  This gives a different feel versus the constant chaos of vanilla. Now when two powers become allied, they will stick together for longer.

## Goods Prices

Here is the list of adjusted base prices for trade goods and foods.  Prices at individual centers will vary based on supply / demand.


Raw Goods (used in profitable enterprises):
- 230 Raw Flax / Flax Bundle
- 175 Wool / Wool Sack
- 700 Raw Silk / Silk Bundle
- 320 Dyes
- 300 Iron / Iron Ore
- 240 Raw Leather / Hides
- 75 Grapes
- 100 Olives
- 30 Grain

Produced Goods:
- 520 Linen (2 Flax => 2 Linen)
- 420 Wool Cloth (2 Wool => 2 Wool Cloth)
- 1300 Velvet (2 Raw Silk + 2 Dye => 2 Velvet)
- 600 Tools (2 Iron => 2 Tools)
- 480 Leatherwork (2 Hides => 2 Leatherwork)
- 470 Wine (5 Grapes => 2 Wine)
- 500 Oil (6 Olives => 2 Oil)
- 260 Ale (3 Grain => 2 Ale)
- 95 Bread (3 Grain => 5 Bread)

Foods:
- 65 Smoked Fish
- 145 Cheese
- 240 Honey
- 85 Sausages
- 30 Cabbages
- 100 Dried Meat
- 50 Fruit
- 180 Beef
- 120 Chicken
- 140 Pork
- 160 Butter
- 180 Date Fruit

Misc:
- 350 Pottery
- 450 Furs

## Installation

You will need an installed copy of [Mount & Blade: Warband](https://store.steampowered.com/app/48700?snr=2_100100_100101_100103_apphubheader), but you do not need any DLC.  Diplomacy (et. al.) are mods based on the vanilla version.  

This mod works fine under the Linux version.  It probably works fine under Windows, but I have not tested it there.

### Download

See the [release archives](https://github.com/WuphonsReach/BeggarsDiplomacy/releases) and download the release that you want.

### Installing

1. Locate your "steam/steamapps/common/MountBlade Warband/Modules" directory.
2. Make a copy of the "Native" folder and rename it.  I suggest naming it "BeggarsDiplomacy".
3. Extract the contents of the release archive into the new directory, overwriting existing files.

### Using the mod

Use the [Mount & Blade: Warband](https://store.steampowered.com/app/48700?snr=2_100100_100101_100103_apphubheader) launcher to pick which module you wish to use.

Alternately, you can locate the "last_module_warband" file (under ~/.mbwarband under Linux) and change it to the directory name where you installed the mod (e.g. "BeggarsDiplomacy").

## Changes

Since this work is based on top of [DIPLADO](https://github.com/diegoami/Diplado/tree/develop) it includes all the fixes listed in the [DIPLADO README](https://github.com/diegoami/Diplado/tree/develop/README.md).

Only changes made on top of [DIPLADO develop](https://github.com/diegoami/Diplado/tree/develop) are mentioned here.

### DPLMC_AI_CHANGES_HIGH

- Player has a -5 penalty in relations with quarrelsome lords, -3 for debauched and -1 for cunning.

### DPLMC_GOLD_CHANGES_LOW

- Player must have +1 relations with the king of the realm before purchasing any business.

### DPLMC_GOLD_CHANGES_MEDIUM

- Player must have +2 relations with the town's liege before purchasing land for a business.
- Player must have +3 relations with the king of the realm before purchasing any business.

### DPLMC_GOLD_CHANGES_HIGH

- Player must have higher relations with the town's liege before purchasing land for a business.  Good-natured lords require +1, upstanding lords require +3, all other lords require +6.  This was done because the enterprises now reward more gold per week, so there needs to be a bit more work before you can purchase a business.
- Player must have +11 reputation with the town before purchasing a business.  This is reduced by 1/2 of the party's trade skill value (down to about +4).  Again, businesses are more profitable, so you must do more work.
- Player must have +5 relations with the king of the realm before purchasing any business.

### Miscellaneous

- Automatic purchase of food can now be set to purchase up to 15 stacks (up from 8).
- The amount of loot seen when defeating another party has been increased. See party_calculate_loot for the details. In practice this means you will see a bit more food from bandit lairs and more trade goods from caravans.
- The odds of seeing an expensive item drop has been improved through the use of the sqrt() function.  No longer will the loot window be filled with only sticks and stones.
- The duration of various pacts (trade / non-aggression / etc.) are now randomized at start-up.  No longer will all the pacts expire exactly at the same time.
- If you have DPLMC_GOLD_CHANGES_MEDIUM or higher, poor villages are now more likely to get infested by bandits.
- The town armorer now sells a larger quantity of body armor.  This makes it easier to find that chest piece that you wanted.  Being able to afford it is a different problem.
- The town weaponsmith now sells a larger quantity of various weapons.  
- The town stables now sell more horses.  This makes it easier to find the type / quality of horse that you want.
- The minimum amount of renown per battle is now 1 (up from zero).  This makes it slightly easier to maintain a higher renown against the renown decay.
- Various quests now reward more XP; at least 100xp for all, with some offering a few hundred more experience.
- Farmers and peasant women can now carry daggers and throwing knives.
- Small tweaks to food morale values.  In general, keep foods in the 3-5 range.  Let bread be 8 (as it was in DIPLADO).  Foods that expire are now all in the 7-8 point range.
- The town market assessment screen will display the estimated "buy price" for the listed item in addition to the estimated profit amount.  This will make it easier to gauge the potential profit for hauling something to the far corners of Caladria.
- The faction relations report now displays the game date in the lower-left corner.
- Increase the map zoom distance so you can see more of Caladria.  Going past 260 or so for map_max_distance causes the map valleys to vanish at maximum zoom.  The value of 300 was definitely too much.
- The base rent for villages/castles/towns is now raised slightly to 1200/1800/3000 (was 1200/1200/2400).
- Once per day, 10% of the village elders receive a small amount of gold (up to 30) based on village prosperity.  TODO: Might be good to invert this award so that poorer villages get the larger gold amount.
- Caravans have a 50% chance per 8 hour interval to decide not to leave. This will let them trickle out over time instead of seeing all the caravans leave at the same instant.
- Randomize the caravan destination decision (cf_select_most_profitable_town_at_peace_with_faction_in_trade_route) by adding a random 0-30% bonus score to each destination's score. This should help spread the caravans out across the 2nd/3rd best destinations if the 1st/2nd/3rd choices all score similarly.  TODO: Examine whether the proper value is 10%/20%/30%.
- The village menu option of demand to meet family of the fugitive (qst_hunt_down_fugitive) does a better job of rolling against persuasion instead of jumping straight to murdering villagers.
- There is a gold penalty for being captured (10-20% of your purse).  Captors no longer overlook the gold in your pockets.
- Insulting lords that you have just met can reward more random renown in exchange for the risk.  Backing down after a challenge gains back a little relations but loses renown.
- Troops now start consuming your food stores from the bottom of the inventory first.  This should play better with the "buy food" feature of Diplomacy+ so that you don't end up with half a dozen half-eaten stacks of food.

### Experiments

- Increase the distance for bandits to join in on a battle.
- Treaty lengths are now three times as long (60 days per level instead of 20 days).  This should result in a bit more stability in Caladria.
- Lower the chance that lords will build fief improvements by factor of 10.  The goal is that lords will not have completely built out a fief before the player takes over.  There may be a need to experiment with how long improvements take to build.
- Lords now wait at least 7 days (was 3 days) between courtship attempts.  This should result in a longer time before all of Caladria's eligible folks are married off.
- Adjust the price adjustment as you buy/sell goods to the merchants.  The logic for this is complicated, so see [commit 90c578f for details](https://github.com/WuphonsReach/BeggarsDiplomacy/commit/90c578f702b2934a5318c749eaeaa55ee3c9caea).  Instead of seeing 4-8% swings every time you purchase/sell one of the trade goods, it should now be down in the 1-3% range.
- Trade good prices and production recipes [have been adjusted](https://docs.google.com/spreadsheets/d/1tbB3DSXtDWWl20p8xGkzv38AmT0rzJeDcC41eqZEPXU/edit?usp=sharing) to try and make player enterprises more rewarding and balanced.  In the base Diplomacy, many businesses would never give more than 100-150 denars/week in profits.  Note that some of these changes only take effect if you start a new game with the new values.  The other goal is to increase trade good prices so that they are worth hauling all over Caladria (but it might break the economy).

### Balance (Towns)

- The starting quest gives more reputation along the way as you complete the various steps.
- Delivering cattle to another town (qst_move_cattle_herd) gives +4 reputation (up from +3), along with more base gold and more gold based on the distance.  The number of cattle now ranges from 40-120 (down from 80-120) to make it more likely that you can use the Diplomacy "drag cattle" option.
- Rescuing the kidnapped daughter of a town noble (qst_kidnapped_girl) gives +4 reputation (up from +2) as well as more gold (including a larger distance modifier).  It should now be worthwhile trudging to the far corners of Caladria in search of the girl.
- Tracking down bandits near a town (qst_track_down_bandits) gives +5 reputation (up from +2) and also rewards 2500xp (up from 1000xp). The bandits often get killed by other parties and the player has to then wait ~48 hours for new bandits to spawn.  The quest logic also fails to deal properly with aggro'ing multiple bandit parties into a single battle.  It might be better to redesign the quest to drive off the count of enemies defeated or something.
- Defeating troublesome bandits (qst_troublesome_bandits) now gives +5 reputation (up from +2) as well as a larger gold reward (about 1000g) based on player level. These bandits tend to wander.
- Escorting a merchant caravan to another town (qst_escort_merchant_caravan) gives +4 reputation (up from +1) as well as a more gold.  The gold reward now has a higher base value and also includes a distance-based reward.  The XP reward is equivalent to the gold reward, plus another 300xp.
- Delivering wine/food to another town's tavern (qst_deliver_wine) gives more gold both as a base amount, plus gold based on the distance to the other town.  Experience is reduced if you fail (tavernkeeper_deliver_wine_incomplete).  You will get 2x the gold reward in XP for completion of the quest.
- Dealing with night bandits (qst_deal_with_night_bandits) now rewards you with 250 denars (was 150) and increases reputation by +2 (was +1).
- The quest for destroying the bandit lair will no longer only be given by the lord of the closest town.  Instead, the distance calculation is fuzzed a bit so that sometimes the 2nd or 3rd closest town will "win" and that lord can offer the quest.  This means that the lord will stop giving that quest as their only quest and also allow other lords to use it.  It can be gamed a bit because you can keep asking the lord over and over until it comes up as a quest option.
- The party_set_bandit_attraction trigger also looks at the number of healthy units in the player's party when calculating the 0..100 score.

### Balance (Villages)

- The stolen grain quest (qst_deliver_grain) will also be offered again faster than before (3-10 days instead of 20 days).  It rewards +2 reputation when you accept and 3-5 upon completion (depending on number of bags of grain).  Village prosperity is increased by 2 plus 1/4 the number of bags.
- The village cattle quest (qst_deliver_cattle) rewards +3 reputation when you accept and a varying amount (based on the number of cattle, 7-10, was +5) when you complete ("cattle you have brought").  The village prosperity is increased by 3 plus 1/2 the number of cattle (was a flat +5).
- The peasant training quest (qst_train_peasants_against_bandits) has been rebalanced. You no longer get +3 reputation just for accepting (village_elder_train_peasants_against_bandits_mission_accept) the request. Each round of training the peasants (train_peasants_against_bandits) now takes about half as much game-time before pitting you against the peasants (~3 hours at Training skill of 10).  The maximum number of peasants per mock training round has been lowered. Losing the mock training battle round now counts towards quest completion, however winning the round now gives +1 renown and +1 reputation.  That makes the quest less frustrating for players. Losing the bandit battle at the end penalizes you by -5 reputation.
- The quest for eliminating bandits at an infested village by talking to the farmer in a tavern (qst_eliminate_bandits_infesting_village) gives +7 reputation (up from +5).
- The quest for eliminating bandits at an infested village by talking to the lord of the fief (qst_deal_with_bandits_at_lords_village) gives +7 reputation (up from +5).
- village_bandits_defeated_cont: Refusing the rewards after defeating bandits at an infested village now gives +4 reputation (up from +3).  This gain is on top of the reputation reward for accepting an eliminate bandit infestation quest.
- take_supplies: Taking supplies from a town results in a larger reputation hit. If you are a lord, -1 changed to -2, otherwise changed -3 to -4.
- Poor villages have a small chance per day to be blessed with some gold, which the elder can then turn into +1 prosperity.

### Balance (Misc Quests)

- Helping out the poor person in a village/town (town_dweller_poor_paid) gives +2 reputation (up from +1).  They do like to wander and it is tedious to talk to every single inhabitant of the village/town.
- Delivering cattle to the army (qst_deliver_cattle_to_army) now pays out 200 denars (was 100).
- Delivering a message to another lord (qst_deliver_message_to_enemy_lord) gives 150 denars (was 30) when you accept (lord_mission_deliver_message_accepted).  You will get 400xp (up from 200xp) upon completion.
- Training troops for another lord (qst_raise_troops) gives more gold when you accept (lord_mission_raise_troops_accepted).
- Becoming a mercenary is now [more lucrative](source/_mercenary_payments.md).  It's a really good idea to spend a few months as a mercenary to pad your wallet.
- Being captured and becoming a captive now lasts longer between escape/release checks.  Roughly 50% to 100% longer for each check.
- Many quests now have randomized timers before they will be offered again.  Unless noted, the median time before being offered again is the same as before.  A quest that would not be offered again for 30 days now has a range of 20-40 days.
- Trivial quests (qst_deal_with_looters, qst_deal_with_night_bandits, qst_deliver_message_to_enemy_lord, etc.) are given less frequently as the player levels up.  The Diplomacy mod already had this concept, but it has been improved.
- Lending your surgeon to another lord (qst_lend_surgeon) now adds another 100xp.
- The quest for following and capturing the spy and master () has been improved.  It is no longer possible for you or your troops to kill the spy or the spy master during the battle (added tf_unkillable).  That makes it much easier to actually complete this quest.
- Rejecting the quest to capture enemy troops (qst_capture_prisoners) no longer results in a -1 reputation hit.  It was one of the only quests where rejecting the quest from a lord lost you reputation with that lord.  It no longer hurts to ask.
- Eliminating the bandit lair only (qst_destroy_bandit_lair) rewards +3 relations (was +4).  These quests give a large amount of XP/gold and are easily farmed.

### Balance (Parties)

- The "manhunters" party_template is now 20-75 troops, up from 9-40 troops.  The manhunters were having trouble as the game went on in dealing with the larger groups of bandits.
- Kingdom parties now add additional units (create_kingdom_party_if_below_limit) as the player levels up.  Early on, this will just be additional civilians, kingdom troops and caravan guards, but eventually includes male and female mercenaries.  Look for reinforcement_cg_count, reinforcement_civs_count, reinforcement_a_count, reinforcement_b_count, reinforcement_mm_count, and reinforcement_fm_count to see the values.  Overall, kingdom caravans are less of a pushover but rewards have also been increased.
- The number of bandits in a bandit lair no longer increases after player level 45.  Given that the player can only bring up to six other party members into the lair, this makes things fairer at higher levels.  The number of bandits that spawn per wave is now 3-5 (instead of a flat 4).
- Bandits will now join at a random distance if DPLMC_TERRAIN_ADVANTAGE_ENABLE is active.  Currently adds about 1-3 points of extra range for them to join in on the fight.
- Player party now consumes food every 12 hours (was every 14 hours), making it easier to calculate food required per day. Food consumption is randomized and it will attempt to pull evenly from each type of food that you have.  Troops will grumble if there are fewer than three different types of food or low on food (three days).  Player gets warning message when there are less than five days of food.  Food consumption now starts at the bottom of your inventory (instead of the top). When combined with the automatic purchase of food, you should see fewer half-eaten stacks of food cluttering up your inventory.

### Bug Fixes

- The bodyguard feature did not look at leadership skill when determining how many bodyguards to spawn.  It only looked at renown (divided by 400 and rounded down).
- Bodyguards will now spawn reliably after visiting the arena or visiting a bandit-infested village.  See [this discussion for the full details](https://github.com/diegoami/Diplado/issues/15).  Basically, we set tcm_disguised to 99 for the Diplomacy disguise system instead of using a value of 1 (that conflicts with those other situations).
- The dialog with a tavern traveler when asking about a companion's location has fewer grammatical errors.
- Prevent the food stack modifier (denoting freshness) from going out of range.  This helps with making sure that rotten food gets sold.  Note that the dplmc_auto_sell script does not properly sell rotten food but the dplmc_auto_buy_food script does now work.
- It is now possible to use custom values for the various trade / non-aggression / alliance pact durations.  The code in module_presentations.py was using hard-coded values instead of the Diplomacy constants.
- The huntress, camp defender and sword sister units now properly spawn with boots and helmets.  Some additional armor options have been added to those units.  The goal is to make them roughly equivalent to their male counterparts.
- Fix a bug in the script where a lord asks you to deal with bandits in one of their villages.  This resulted in a script-error because the script did not pass two parameters to the second script.

## Making Changes

Create a fork/clone of [the github repository](https://github.com/WuphonsReach/BeggarsDiplomacy).

You must have a copy of Python 2.7 installed.  Edit either [compile.bat](source/compile.bat) or [compile.sh](source/compile.sh) to point at the correct version of Python.

    $ cd source/
    $ ./compile.sh

If you are using the [compile.sh](source/compile.sh), take a look inside and edit the INSTALLDIR variable.  That way any updated files will automatically be copied to your "Modules" folder.

You must exit and restart Mount & Blade: Warband after compiling and installing your changes for them to work.

## References

- [Mount and Blade: Warband Modding Wikipedia](https://mbmodwiki.github.io/Main_Page)

## Parentage

- [Warband Module System 1.171 (official download)](https://forums.taleworlds.com/index.php?threads/warband-modders-download-repository.326973/).  The original scripts as released for M&B:WB 1.171.
- [Diplomacy (Steam) by ughgh)](https://steamcommunity.com/sharedfiles/filedetails/?id=285119009)
- [Diplomacy (dropbox download)](https://www.dropbox.com/sh/679r1y39lp1d4s9/AAD2MWmHZtmIYxX4Ubmw002Ea?dl=0) and the [Taleworlds Forum Link](https://forums.taleworlds.com/index.php?threads/diplomacy-for-1-174.324014/).
- [DIPLADO (DIPLomacy desperADO)](https://github.com/diegoami/Diplado) - BeggarsDiplomacy is branched off the [develop](https://github.com/diegoami/Diplado/tree/develop) branch, which was last updated on Oct 26, 2019.

## Credits

- The Diplomacy mod maintainers (Waihti, hessuu, fisheye, rubik, jrider, Mjollnir, Akmar Nibelung, Parsifal, Somebody)
- Other Taleworlds forum users: Dj_FRedy, Jinnai, lazeras, Caba`dr, Glabrezu, Efe Karaca
- diegoami who forked and created Diplado
  