scoreboard players set #max raycast_steps.callyourhappyghast 320
scoreboard players reset #steps raycast_steps.callyourhappyghast

# Tag happy_ghast the player is looking at
execute as @a[predicate=callyourhappyghast:looking_at] at @s anchored eyes positioned ^ ^ ^0.2 run function callyourhappyghast:goat_horn_give/raycast

# UUID check
execute if score &happy_ghast_owner callyourhappyghast.config matches 1 run data modify storage callyourhappyghast:root data.UUID set from entity @e[limit=1,tag=happy_ghast_to_call] data.Owner
execute if score &happy_ghast_owner callyourhappyghast.config matches 1 store success score &UUID_check check.callyourhappyghast run data modify storage callyourhappyghast:root data.UUID set from entity @s UUID

execute if score &happy_ghast_owner callyourhappyghast.config matches 1 if data entity @e[limit=1,tag=happy_ghast_to_call] data.Owner if score &UUID_check check.callyourhappyghast matches 1 run title @s actionbar {"text":"Happy Ghast already has a horn bound to it by another user","color":"red"}
execute if score &happy_ghast_owner callyourhappyghast.config matches 1 if data entity @e[limit=1,tag=happy_ghast_to_call] data.Owner if score &UUID_check check.callyourhappyghast matches 1 run return fail

# Get data to store in goat horn
function callyourhappyghast:get_data/goat_horn_slot

function callyourhappyghast:get_data/goat_horn_instrument

function callyourhappyghast:get_data/player_name

function callyourhappyghast:get_data/audioplayer

# If happy_ghast_owner setting is enabled
execute if score &happy_ghast_owner callyourhappyghast.config matches 1 run data modify storage callyourhappyghast:root data.Owner set from entity @s UUID
execute if score &happy_ghast_owner callyourhappyghast.config matches 1 run function callyourhappyghast:goat_horn_give/set_owner with storage callyourhappyghast:root data

# get happy_ghast UUID to store in goat horn
data modify storage callyourhappyghast:root data.happy_ghast_UUID_to_call set from entity @e[limit=1,tag=happy_ghast_to_call] UUID

data modify storage callyourhappyghast:root data.happy_ghast_UUID_to_call_0 set from entity @e[limit=1,tag=happy_ghast_to_call] UUID[0]

# get happy_ghast name
data modify storage callyourhappyghast:root data.happy_ghast_name set from entity @e[limit=1,tag=happy_ghast_to_call] CustomName

# execute give goat horn
execute as @s at @s if entity @e[limit=1,tag=happy_ghast_to_call] run function callyourhappyghast:goat_horn_give/goat_horn_give_macro with storage callyourhappyghast:root data

tag @e[tag=happy_ghast_to_call] remove happy_ghast_to_call

data remove storage callyourhappyghast:root data.UUID
data remove storage callyourhappyghast:root data.goat_horn_slot
data remove storage callyourhappyghast:root data.goat_horn_instrument
data remove storage callyourhappyghast:root data.happy_ghast_UUID_to_call
data remove storage callyourhappyghast:root data.happy_ghast_UUID_to_call_0
data remove storage callyourhappyghast:root data.happy_ghast_name
data remove storage callyourhappyghast:root data.player_name
data remove storage callyourhappyghast:root data.audioplayer