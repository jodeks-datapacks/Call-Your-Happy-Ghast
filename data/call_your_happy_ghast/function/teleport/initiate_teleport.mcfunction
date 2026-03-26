
scoreboard players add &time_since_goat_horn_use check.call_your_happy_ghast 1

execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 1 run function call_your_happy_ghast:teleport/teleport/forceload_add with storage call_your_happy_ghast:root data

$execute if score &teleported check.call_your_happy_ghast matches 0 if entity @e[nbt={UUID:$(happy_ghast_UUID_from_horn)}] run function call_your_happy_ghast:teleport/teleport/teleport with storage call_your_happy_ghast:root data

execute if score &mount_automatically call_your_happy_ghast.config matches 1 if score &mounted check.call_your_happy_ghast matches 0 if score &teleported check.call_your_happy_ghast matches 1 if score &time_since_goat_horn_use check.call_your_happy_ghast matches 5.. run function call_your_happy_ghast:teleport/teleport/mount with storage call_your_happy_ghast:root data

execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 25 run function call_your_happy_ghast:teleport/teleport/forceload_remove with storage call_your_happy_ghast:root data



execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 26.. run scoreboard players set &teleported check.call_your_happy_ghast 0

execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 26.. run scoreboard players set &mounted check.call_your_happy_ghast 0

execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 26.. run scoreboard players set &time_since_goat_horn_use check.call_your_happy_ghast 0

execute if score &time_since_goat_horn_use check.call_your_happy_ghast matches 1.. run schedule function call_your_happy_ghast:teleport/call_initiate 1t