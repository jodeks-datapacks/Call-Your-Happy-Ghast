$execute if entity @a[nbt={UUID:$(player_UUID),RootVehicle:{}},limit=1] run return fail

$ride @a[nbt={UUID:$(player_UUID)},limit=1] mount @e[nbt={UUID:$(happy_ghast_UUID_from_horn)},limit=1]

$execute at @e[nbt={UUID:$(happy_ghast_UUID_from_horn)},limit=1] run playsound entity.happy_ghast.saddle player @a[nbt={UUID:$(player_UUID)},limit=1] ~ ~ ~ 1 1

# $say $(player_UUID) $(happy_ghast_UUID_from_horn)

scoreboard players set &mounted check.callyourhappyghast 1