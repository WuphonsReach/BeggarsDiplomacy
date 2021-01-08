## beggars-1 branch

Compare link:
https://github.com/WuphonsReach/Diplado/compare/develop...beggars-1

## Changes

Overall, the goal on the beggars-1 branch is to experiment with making it more worthwhile to accomplish various tasks.  These could be increased reputation gains and/or increased monetary rewards.

Any commit hashes likely only appear in the [WuphonsReach fork on Github](https://github.com/WuphonsReach/Diplado/commits/beggars-1).

### Warnings

- Do not use this branch with a save where you are disguised for some reason.

### Fixes

- Bodyguards should now always appear when they should.  Even after you have cleared an infested village of bandits (along with two other situations).  See [commit b8418be7e230656e7674ebd5c1f4092886e35f78](https://github.com/WuphonsReach/Diplado/commit/b8418be7e230656e7674ebd5c1f4092886e35f78).

### Minor Changes

- Being a letter courier pays 150 (up from 30)
- Manhunter parties spawn with 20-75 troops (up from 9-40) to deal with the larger bandit packs mid-late game.
- Experimenting with longer imprisonment timers (up to 48-72 hours).
- Doubles the reward for delivering cattle to the marshal.
- Increase the gold reward for training up troops for another lord.  (TODO)
- Escort merchant caravan should pay more, and give more reputation.
- The other escort caravan mission gives more gold.
- Wine/food delivery will pay more.
- Rescuing the kidnapped girl has higher monetary reward.  Especially if it's on the other side of the map.
- Hunting troublesome bandits gives more gold.
- Purchasing cattle for a village gives +9 (up from +3) due to the cost.
- Giving grain to a village gives +6 (up from +3).
- Giving 300 gold to a poor inhabitant gives +2 (up from +1).  These inhabitants wander and are tedious to talk to.
- "Train the peasants" quest has shorter wait intervals (3-5 hours, down from 6-12 hours) between quest steps.
- Even if you fail during a "train the peasants" training round, the quest will still advance one step.
- Eliminating bandits in a village gives +4 if you just show up, +9 if it was due to a quest.
- Lose -2 or -4 for force-taking supplies from a village.

### Mercenary Wages

The original offer/weekly amount was:

- offer: party strength + 100
- weekly: (party strength / 2) + 30

The changed offer/weekly amount is:

- offer: party strength + (renown * 1.5) + 600
- weekly: (party strength / 2) + renown + 400

The end result is enough that you can comfortably break even on the weekly wages.  For ~400 renown with ~2500/wk costs and ~120 troops you will get 1700/wk in wages.  With only ~170 renown with ~1600/wk costs and ~65 troops you will get 1100/wk in wages.

The key changes for this are in two different files:

module_dialogs.py, lord_propose_mercenary (around line 29353)
module_presentations.py, budget_report (around line 13375)

See [one of the commits](https://github.com/WuphonsReach/Diplado/commit/1f94ff3991742ef13b6e2dfc1352dce8183b9470) for the location of these changes.
