# BeggarsDiplomacy

Mount &amp; Blade Warband: Diplomacy mod (Beggars fork of Diplado).  This works fine under the Linux version of Mount and Blade: Warband.  It probably works fine under Windows, but I have not tested it there.

The goal of BeggarsDiplomacy is to take the improvements from [Diplado develop](https://github.com/diegoami/Diplado/tree/develop) and go further.  Fixing any outstanding bugs and improving the game balance to be less grindy.  I have also attempt to add in comments in both the Python files and the commit history to help with future work, or explaining how a particular bug was fixed.

## Contents

- [BeggarsDiplomacy](#beggarsdiplomacy)
  - [Contents](#contents)
  - [Installing](#installing)
    - [Download](#download)
    - [Installation](#installation)
    - [Using the mod](#using-the-mod)
  - [Changes](#changes)
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
  - [Parentage](#parentage)
  - [Credits](#credits)

## Installing

You will need an installed copy of [Mount & Blade: Warband](https://store.steampowered.com/app/48700?snr=2_100100_100101_100103_apphubheader), but you do not need any DLC.  Diplomacy (et. al.) are mods based on the vanilla version.  

### Download

See the [release archives](https://github.com/WuphonsReach/BeggarsDiplomacy/releases) and download the release that you want.

### Installation

1. Locate your "steam/steamapps/common/MountBlade Warband/Modules" directory.
2. Make a copy of the "Native" folder and rename it.  I suggest naming it "BeggarsDiplomacy".
3. Extract the contents of the release archive into the new directory, overwriting existing files.

### Using the mod

Use the Mount & Blade: Warband launcher to pick which module you wish to use.

Alternately, you can locate the "last_module_warband" file (under ~/.mbwarband under Linux) and change it to the directory name where you installed the mod (e.g. "BeggarsDiplomacy").

## Changes

Since this work is based on top of [DIPLADO](https://github.com/diegoami/Diplado/tree/develop) it includes all the fixes listed in the [Diplado README](https://github.com/diegoami/Diplado/tree/develop/README.md).

Only changes made on top of [Diplado develop](https://github.com/diegoami/Diplado/tree/develop) are mentioned here.

### DPLMC_GOLD_CHANGES_MEDIUM

- Player must have +2 relations with the town's liege before purchasing land for a business.

### DPLMC_GOLD_CHANGES_HIGH

- Player must have higher relations with the town's liege before purchasing land for a business.  Good-natured lords require +1, upstanding lords require +3, all other lords require +5.  This was done because the enterprises now reward more gold per week, so there needs to be a bit more work before you can purchase a business.
- Player must have +10 reputation with the town before purchasing a business.  This is reduced by 1/2 of the party's trade skill value.  Again, businesses are more profitable, so do more work.

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
- Small tweaks to food morale values.  In general, keep foods in the 3-5 range.  Let bread be 8 (as it was in Diplado).  Foods that expire are now all in the 7-8 point range.
- The town market assessment screen will display the estimated "buy price" for the listed item in addition to the estimated profit amount.  This will make it easier to gauge the potential profit for hauling something to the far corners of Caladria.
- The faction relations report now displays the game date in the lower-left corner.

### Experiments

- Increase the distance for bandits to join in on a battle.
- Treaty lengths are now three times as long (60 days per level instead of 20 days).  This should result in a bit more stability in Caladria.
- Lower the chance that lords will build fief improvements by factor of 10.  The goal is that lords will not have completely built out a fief before the player takes over.  There may be a need to experiment with how long improvements take to build.
- Lords now wait at least 7 days (was 3 days) between courtship attempts.  This should result in a longer time before all of Caladria's eligible folks are married off.
- Adjust the price adjustment as you buy/sell goods to the merchants.  The logic for this is complicated, so see [commit 90c578f for details](https://github.com/WuphonsReach/BeggarsDiplomacy/commit/90c578f702b2934a5318c749eaeaa55ee3c9caea).  Instead of seeing 4-8% swings every time you purchase/sell one of the trade goods, it should now be down in the 1-3% range.

### Balance (Towns)

- The starting quest gives more reputation along the way as you complete the various steps.
- Delivering cattle to another town (qst_move_cattle_herd) gives +4 reputation (up from +3), along with more base gold plus more based on the distance.  The number of cattle now ranges from 40-120 (down from 80-120) to make it more likely that you can use the Diplomacy "drag cattle" option.
- Rescuing the kidnapped daughter of a town noble (qst_kidnapped_girl) gives +4 reputation (up from +2) as well as more gold (including a larger distance modifier).  It should now be worthwhile trudging to the far corners of Caladria in search of the girl.
- Tracking down bandits near a town (qst_track_down_bandits) gives +5 reputation (up from +2) and also rewards 2500xp (up from 1000xp). 
- Defeating troublesome bandits (qst_troublesome_bandits) now gives +5 reputation (up from +2) as well as a larger gold reward (about 1000g) based on player level. 
- Escorting a merchant caravan to another town (qst_escort_merchant_caravan) gives +4 reputation (up from +1) as well as a more gold.  The gold reward now has a higher base value and also includes a distance-based reward.
- Delivering wine/food to another town's tavern (qst_deliver_wine) gives more gold both as a base amount, plus gold based on the distance to the other town.
- Dealing with night bandits (qst_deal_with_night_bandits) now rewards you with 250 denars (was 150) and increases reputation by +2 (was +1).

### Balance (Villages)

- village_elder_deliver_cattle_mission_accept: Replacing cattle for a village gives +9 reputations (up from +3). (TODO: Examine this again.  It should be +3 to accept, and more to complete.)
- village_elder_deliver_grain_mission_accept: Replacing stolen grain for a village gives +9 reputation (up from +5). (TODO: Examine this again.  It should be +3 to accept, and more to complete.)
- The stolen grain quest () now gives gives +7 reputation (up from +5) when you complete it (village_elder_deliver_grain_thank).  It will also be offered again faster than before (5-20 days instead of 20 days).
- The peasant training quest (qst_train_peasants_against_bandits) has been rebalanced. You no longer get +3 reputation just for accepting (village_elder_train_peasants_against_bandits_mission_accept) the request. Each round of training the peasants (train_peasants_against_bandits) now takes about half as much game-time before pitting you against the peasants (~3 hours at Training skill of 10).  The maximum number of peasants per mock training round has been lowered. Losing the mock training battle round now counts towards quest completion, however winning the round now gives +1 renown and +1 reputation.  That makes the quest less frustrating for players. Losing the bandit battle at the end penalizes you by -5 reputation.
- The quest for eliminating bandits at an infested village by talking to the farmer in a tavern (qst_eliminate_bandits_infesting_village) gives +9 reputation (up from +5).
- The quest for eliminating bandits at an infested village by talking to the lord of the fief (qst_deal_with_bandits_at_lords_village) gives +9 reputation (up from +5).
- village_bandits_defeated_cont: Refusing the rewards after defeating bandits at an infested village now gives +4 reputation (up from +3).  This gain is on top of the reputation reward for accepting an eliminate bandit infestation quest.
- take_supplies: Taking supplies from a town results in a larger reputation hit. If you are a lord, -1 changed to -2, otherwise changed -3 to -4.

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

### Balance (Parties)

- The "manhunters" party_template is now 20-75 troops, up from 9-40 troops.  The manhunters were having trouble as the game went on in dealing with the larger groups of bandits.
- Kingdom parties now add additional units (create_kingdom_party_if_below_limit) as the player levels up.  Early on, this will just be additional civilians, kingdom troops and caravan guards, but eventually includes male and female mercenaries.  Look for reinforcement_cg_count, reinforcement_civs_count, reinforcement_a_count, reinforcement_b_count, reinforcement_mm_count, and reinforcement_fm_count to see the values.  Overall, kingdom caravans are less of a pushover but rewards have also been increased.
- The number of bandits in a bandit lair no longer increases after player level 45.  Given that the player can only bring up to five party members into the lair, this makes things fairer at higher levels.  The number of bandits that spawn per wave is now 3-5 (instead of a flat 4).

### Bug Fixes

- The bodyguard feature did not look at leadership skill when determining how many bodyguards to spawn.  It only looked at renown (divided by 400 and rounded down).
- Bodyguards will now spawn reliably after visiting the arena or visiting a bandit-infested village.  See [this discussion for the full details](https://github.com/diegoami/Diplado/issues/15).  Basically, we set tcm_disguised to 99 for the Diplomacy disguise system instead of using a value of 1 (that conflicts with those other situations).
- The dialog with a tavern traveler when asking about a companion's location has fewer grammatical errors.
- Prevent the food stack modifier (denoting freshness) from going out of range.  This helps with making sure that rotten food gets sold.  Note that the dplmc_auto_sell script does not properly sell rotten food but the dplmc_auto_buy_food script does now work.
- It is now possible to use custom values for the various trade / non-aggression / alliance pact durations.  The code in module_presentations.py was using hard-coded values instead of the Diplomacy constants.
- The huntress, camp defender and sword sister units now properly spawn with boots and helmets.  Some additional armor options have been added to those units.  The goal is to make them roughly equivalent to their male counterparts.

## Making Changes

Create a fork/clone of [the github repository](https://github.com/WuphonsReach/BeggarsDiplomacy).

You must have a copy of Python 2.7 installed.  Edit either [compile.bat](source/compile.bat) or [compile.sh](source/compile.sh) to point at the correct version of Python.

    $ cd source/
    $ ./compile.sh

If you are using the [compile.sh](source/compile.sh), take a look inside and edit the INSTALLDIR variable.  That way any updated files will automatically be copied to your "Modules" folder.

You must exit and restart Mount & Blade: Warband after compiling and installing your changes for them to work.

## Parentage

- [Warband Module System 1.171 (official download)](https://forums.taleworlds.com/index.php?threads/warband-modders-download-repository.326973/).  The original scripts as released for M&B:WB 1.171.
- [Diplomacy (Steam) by ughgh)](https://steamcommunity.com/sharedfiles/filedetails/?id=285119009)
- [Diplomacy (dropbox download)](https://www.dropbox.com/sh/679r1y39lp1d4s9/AAD2MWmHZtmIYxX4Ubmw002Ea?dl=0) and the [Taleworlds Forum Link](https://forums.taleworlds.com/index.php?threads/diplomacy-for-1-174.324014/).
- [DIPLADO (DIPLomacy desperADO)](https://github.com/diegoami/Diplado) - BeggarsDiplomacy is branched off the [develop](https://github.com/diegoami/Diplado/tree/develop) branch, which was last updated on Oct 26, 2019.

## Credits

- The Diplomacy mod maintainers (Waihti, hessuu, fisheye, rubik, jrider, Mjollnir, Akmar Nibelung, Parsifal, Somebody)
- Other Taleworlds forum users: Dj_FRedy, Jinnai, lazeras, Caba`dr, Glabrezu, Efe Karaca
- diegoami who forked and created Diplado
  