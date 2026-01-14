$execute as @e[type=happy_ghast,nbt={UUID:$(happy_ghast_UUID_from_horn)}] unless entity @s[predicate=callyourhappyghast:no_player_on_happy_ghast] \
 unless data entity @s leash run function callyourhappyghast:teleport/teleport/teleport_unleashed with storage callyourhappyghast:root

$execute as @e[type=happy_ghast,nbt={UUID:$(happy_ghast_UUID_from_horn)}] unless entity @s[predicate=callyourhappyghast:no_player_on_happy_ghast] \
 if data entity @s leash run function callyourhappyghast:teleport/teleport/teleport_leashed with storage callyourhappyghast:root


# $say teleport $(happy_ghast_UUID_from_horn) $(player_UUID) 

scoreboard players set &teleported check.callyourhappyghast 1