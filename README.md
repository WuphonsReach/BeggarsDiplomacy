# BeggarsDiplomacy

Mount &amp; Blade Warband: Diplomacy mod (Beggars fork of Diplado).  This works fine under the Linux version of Mount and Blade: Warband.

- [BeggarsDiplomacy](#beggarsdiplomacy)
  - [Installing](#installing)
    - [Download](#download)
    - [Installation](#installation)
    - [Using the mod](#using-the-mod)
  - [Changes](#changes)
    - [Diplado by diegoami](#diplado-by-diegoami)
    - [BeggarsDiplomacy](#beggarsdiplomacy-1)
      - [Bug Fixes](#bug-fixes)
      - [Balance](#balance)
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

### Diplado by diegoami 

Since this work is based on top of [DIPLADO](https://github.com/diegoami/Diplado/tree/develop) it includes all the fixes listed in the [README](https://github.com/diegoami/Diplado/tree/develop/README.md).

### BeggarsDiplomacy

Only changes made on top of [Diplado develop](https://github.com/diegoami/Diplado/tree/develop) are mentioned here.

#### Bug Fixes

#### Balance

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
  