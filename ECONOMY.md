# BeggarsDiplomacy Economy

(TODO: intro blurb for economics)

## Contents

- [BeggarsDiplomacy Economy](#beggarsdiplomacy-economy)
  - [Contents](#contents)
  - [Core Concepts](#core-concepts)
    - [Price Factor](#price-factor)
    - [Consumption](#consumption)
    - [Production](#production)
    - [Local Market](#local-market)
    - [Caravans](#caravans)

## Core Concepts

### Price Factor

Mount & Blade: Warband separates the concept of what an item costs from how the game tracks price differences across the land.  Every product has both a base price and a price factor; and this price factor varies by party/location.  The price factor for grain might be 80% in Wercheg and 120% in Halmar.  

The price factor is stored as a value between 100 (minimum_price_factor) and 10000 (maximum_price_factor) with 1000 (average_price_factor) considered to be the base.  A value of 1000 should be looked at as a value of 1.000 (three decimal places), 2000 = 2.0, 500 = 0.5, etc.  

    Base price = 340 denars
    Price factor of: 
     500 = 170 denars
    1000 = 340 denars
    1500 = 555 denars

In terms of game balance, the various scripts try to keep price factors between 500 and 1500.  You will often see average_price_factor mixed into the calculations in order to push the price factor back towards 1000.


### Consumption

Both villages and towns have the concept of "consumer" consumption of the various trade goods (spice to butter in module_items.py).  Desert villages/towns have a separate consumption value that is shared between desert towns/villages.  For instance, pigs and alcohol consumption are low/zero in the desert (which is patterned on middle-eastern culture).

- slot_item_urban_demand
- slot_item_rural_demand
- slot_item_desert_demand

These demand values could be adjusted in the script "center_get_consumption".

There is a second source of demand driven by the player's enterprises (businesses) in a town as well as game industries like turning beef+salt into dried meat.

Prosperity also plays a role in the consumption/demand as well as the price factor of the good.  When the price factor goes up, consumption will decrease a bit.

### Production

Villages and towns have a mix of raw resources and industries that convert those resources into other trade goods.  The setup for this occurs in the script "initialize_economic_information".  As a general rule-of-thumb, raw resources come from the villages and finished trade goods are produced in the towns.

### Local Market

All villages are assigned to a nearby town as their "market town".  This relationship determines which town the farmers will leave for and return from every day or two.  If a village is "bound" to a castle, that farmer may have to travel a long ways to get to the nearest market town for the faction.  If a faction has villages, but no towns, then villages will use the nearest friendly town as their market town.






### Caravans

