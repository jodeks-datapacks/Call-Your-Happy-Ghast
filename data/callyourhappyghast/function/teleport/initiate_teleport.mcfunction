
scoreboard players add &time_since_goat_horn_use check.callyourhappyghast 1

execute if score &time_since_goat_horn_use check.callyourhappyghast matches 1 run function callyourhappyghast:teleport/teleport/forceload_add with storage callyourhappyghast:root data

$execute if score &teleported check.callyourhappyghast matches 0 if entity @e[nbt={UUID:$(happy_ghast_UUID_from_horn)}] run function callyourhappyghast:teleport/teleport/teleport with storage callyourhappyghast:root data

execute if score &mount_automatically callyourhappyghast.config matches 1 if score &mounted check.callyourhappyghast matches 0 if score &teleported check.callyourhappyghast matches 1 if score &time_since_goat_horn_use check.callyourhappyghast matches 5.. run function callyourhappyghast:teleport/teleport/mount with storage callyourhappyghast:root data

execute if score &time_since_goat_horn_use check.callyourhappyghast matches 25 run function callyourhappyghast:teleport/teleport/forceload_remove with storage callyourhappyghast:root data



execute if score &time_since_goat_horn_use check.callyourhappyghast matches 26.. run scoreboard players set &teleported check.callyourhappyghast 0

execute if score &time_since_goat_horn_use check.callyourhappyghast matches 26.. run scoreboard players set &mounted check.callyourhappyghast 0

execute if score &time_since_goat_horn_use check.callyourhappyghast matches 26.. run scoreboard players set &time_since_goat_horn_use check.callyourhappyghast 0

execute if score &time_since_goat_horn_use check.callyourhappyghast matches 1.. run schedule function callyourhappyghast:teleport/call_initiate 1t