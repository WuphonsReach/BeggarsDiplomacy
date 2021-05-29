# BeggarsDiplomacy Economy

(TODO: intro blurb for economics)

## Contents

- [BeggarsDiplomacy Economy](#beggarsdiplomacy-economy)
  - [Contents](#contents)
  - [Core Concepts](#core-concepts)
    - [Price Factor](#price-factor)
  - [Mechanics](#mechanics)

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

## Mechanics

