
<p align="center">
  <a href="https://www.nexusmods.com/cyberpunk2077/mods/4325"><img alt="HARDCORE44" src="https://i.imgur.com/4EWGJmh.png"></a><br />
  <a href="https://github.com/radj307/actions/workflows/Generate-Release.yml"><img alt="Release Status" src="https://img.shields.io/github/workflow/status/radj307/HARDCORE44/Generate-Release?label=Release%20Generator&logo=github&style=flat-square"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/radj307/HARDCORE44/releases"><img alt="GitHub tag (latest by date)" src="https://img.shields.io/github/v/tag/radj307/HARDCORE44?label=Latest%20Version&logo=github&style=flat-square"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://www.nexusmods.com/cyberpunk2077/mods/4325"><img alt="Nexus Mods Badge" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fgist.githubusercontent.com%2Fradj307%2Fe9a80731ee236cc67fb00b698e75201e%2Fraw%2F5230074dfb1a60fba917a1232f9382fa5cfec5db%2Fendpoint.json&style=flat-square"></a><br/><br/>
  This is a rebalance of the <a href="https://www.nexusmods.com/cyberpunk2077/mods/1908"><b>HARDCORE22 - Realistic Combat Overhaul </b></a> mod by <a href="https://www.nexusmods.com/cyberpunk2077/users/4838313"><b>cortlong50 </b></a> with the goal of levelling the playing field between the player & NPCs by extending RCO's realistic time-to-kill to include the player.<br/><br/>
</p>


# What It Does

All `0.x.x` versions are based on __RCO 2.04__, only the changes compared to __RCO__ are included in this list.  
_(Note: This list is non-exhaustive, and may not accurately reflect changes made after this was written.)_

## Player

- Greatly increases the DPS of the player.
- Raises **RCO**'s player health limit of `100` at higher levels.
- Decreases quickhack damage.
- Decreases the amount of melee damage gained per level of the __Body__ attribute.
  This makes melee damage scale in a more sensible way.

## Enemies

- Increases the DPS of all NPCs.  
  This makes shootouts _much_ harder.  
- Changes the scaling on base enemy health, starts at 100 and increases by 1 for each level.

## Gameplay

- Removed a significant amount of records related to experience gain & the levelling system.  
  This improves **ARCO**'s compatibility with other mods, without sacrificing any of the features added by **RCO**.  
  As of 0.1.2, ARCO is fully compatible with **[Level Scaling and Balance](https://www.nexusmods.com/cyberpunk2077/mods/1712)**.


# Getting Started

Adding the mod mid-playthrough is relatively painless, however the same cannot be said for removing it.  
The level requirement removal script `REALISTICCOMBATOVERHAUL.reds` cannot be removed without issue as the level requirements of all items in your inventory/stash remain unchanged, but your ability to bypass those level requirements disappears.  
_This usually results in the player character being left unarmed, naked, and afraid - until new items are bought or scavenged from NPCs._

## Installation

 1. Download and install the most recent version of [redscript](https://www.nexusmods.com/cyberpunk2077/mods/1511).
 2. Download the latest [version](https://github.com/radj307/HARDCORE44/releases).
 3. Install using your preferred mod manager, or extract the downloaded archive to your root Cyberpunk 2077 directory.  
    You should now have the following files:  
    - `<Cyberpunk 2077>/archive/pc/mod/basegame_REALISM.archive`  
    - `<Cyberpunk 2077>/r6/scripts/REALISTICCOMBATOVERHAUL.reds`  
 4. Set your difficulty level to `Very Hard` in-game.  
    This does __not require a new game__, however adding/removing it mid playthrough __will cause issues!__  


# Permissions & Credits

- **[cortlong50](https://www.nexusmods.com/cyberpunk2077/users/4838313)**, creator of the **HARDCORE22 - Realistic Combat Overhaul** mod for doing all of the hard work, and allowing community-made modifications of RCO.  
