$execute as @e[type=happy_ghast,nbt={UUID:$(happy_ghast_UUID_from_horn)}] unless entity @s[predicate=call_your_happy_ghast:no_player_on_happy_ghast] \
 unless data entity @s leash run function call_your_happy_ghast:teleport/teleport/teleport_unleashed with storage call_your_happy_ghast:root data

$execute as @e[type=happy_ghast,nbt={UUID:$(happy_ghast_UUID_from_horn)}] unless entity @s[predicate=call_your_happy_ghast:no_player_on_happy_ghast] \
 if data entity @s leash run function call_your_happy_ghast:teleport/teleport/teleport_leashed with storage call_your_happy_ghast:root data

scoreboard players set &teleported check.call_your_happy_ghast 1