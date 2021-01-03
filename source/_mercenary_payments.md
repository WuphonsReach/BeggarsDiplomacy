## Options

### Renown

The code to get renown is usually shown as:

    (troop_get_slot, ":player_renown", "trp_player", slot_troop_renown)

## Code bits


### module_dialogs.py

Contains the code for the initial offer to become a mercenary.  The default is party strength plus 100 gold (into `:offer_value`).

    [anyone,"lord_propose_mercenary", 
        [(call_script, "script_party_calculate_strength", "p_main_party", 0),
        (assign, ":offer_value", reg0),
        (val_add, ":offer_value", 100),
        (call_script, "script_round_value", ":offer_value"),
        (assign, ":offer_value", reg0),
        (assign, "$temp", ":offer_value"),
        (faction_get_slot, ":faction_leader", "$g_talk_troop_faction", slot_faction_leader),
        (neq, ":faction_leader", "$g_talk_troop"),
        (str_store_faction_name, s9, "$g_talk_troop_faction"),
        (str_store_troop_name, s10, ":faction_leader"),

In my branch, I've boosted the 100 to 600 for the base.  Plus added 2x the player's renown as additional incentive.

### module_presentations.py

The calculation on the budget report is as follows.  It is also used to calculate the weekly pay rate.  The default is 1/2 of the party strength plus 30.  

        (call_script, "script_party_calculate_strength", "p_main_party", 0),
        (assign, ":offer_value", reg0),
        (val_div, ":offer_value", 2),
        (val_add, ":offer_value", 30),
        (call_script, "script_round_value", ":offer_value"),
        (val_add, ":net_change", reg0),

In my branch, the changed rate is "party strength / 2" + 300 + "player renown".
