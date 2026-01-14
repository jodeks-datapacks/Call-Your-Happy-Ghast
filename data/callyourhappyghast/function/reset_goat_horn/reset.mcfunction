$scoreboard players remove $(happy_ghast_UUID_from_horn_0) callyourhappyghast.bound_goat_horns 1

$item replace entity @s hotbar.$(goat_horn_slot) with goat_horn[instrument="$(goat_horn_instrument)"]

$execute if score $(happy_ghast_UUID_from_horn_0) callyourhappyghast.bound_goat_horns matches 0 run data remove entity @e[type=happy_ghast,tag=happy_ghast_can_called,nbt={UUID:$(happy_ghast_UUID_from_horn)},limit=1] data.Owner

$tag @e[type=happy_ghast,tag=happy_ghast_can_called,nbt={UUID:$(happy_ghast_UUID_from_horn)},limit=1] remove happy_ghast_can_called

$data remove storage callyourhappyghast:root happy_ghast_Pos."$(happy_ghast_UUID_from_horn).x"

$data remove storage callyourhappyghast:root happy_ghast_Pos."$(happy_ghast_UUID_from_horn).z"

data remove storage callyourhappyghast:root goat_horn_instrument
data remove storage callyourhappyghast:root goat_horn_slot
data remove storage callyourhappyghast:root happy_ghast_UUID_from_horn
data remove storage callyourhappyghast:root happy_ghast_UUID_from_horn_0