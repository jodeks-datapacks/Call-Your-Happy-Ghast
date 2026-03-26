scoreboard players set #max raycast_steps.call_your_happy_ghast 320
scoreboard players reset #steps raycast_steps.call_your_happy_ghast

# Tag happy_ghast the player is looking at
execute as @a[predicate=call_your_happy_ghast:looking_at] at @s anchored eyes positioned ^ ^ ^0.2 run function call_your_happy_ghast:goat_horn_give/raycast

# UUID check
execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 run data modify storage call_your_happy_ghast:root data.UUID set from entity @e[limit=1,tag=happy_ghast_to_call] data.Owner
execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 store success score &UUID_check check.call_your_happy_ghast run data modify storage call_your_happy_ghast:root data.UUID set from entity @s UUID

execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 if data entity @e[limit=1,tag=happy_ghast_to_call] data.Owner if score &UUID_check check.call_your_happy_ghast matches 1 run title @s actionbar {"text":"Happy Ghast already has a horn bound to it by another user","color":"red"}
execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 if data entity @e[limit=1,tag=happy_ghast_to_call] data.Owner if score &UUID_check check.call_your_happy_ghast matches 1 run return fail

# Get data to store in goat horn
function call_your_happy_ghast:get_data/goat_horn_slot

function call_your_happy_ghast:get_data/goat_horn_instrument

function call_your_happy_ghast:get_data/player_name

function call_your_happy_ghast:get_data/audioplayer

# If happy_ghast_owner setting is enabled
execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 run data modify storage call_your_happy_ghast:root data.Owner set from entity @s UUID
execute if score &happy_ghast_owner call_your_happy_ghast.config matches 1 run function call_your_happy_ghast:goat_horn_give/set_owner with storage call_your_happy_ghast:root data

# get happy_ghast UUID to store in goat horn
data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_to_call set from entity @e[limit=1,tag=happy_ghast_to_call] UUID

data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_to_call_0 set from entity @e[limit=1,tag=happy_ghast_to_call] UUID[0]

# get happy_ghast name
data modify storage call_your_happy_ghast:root data.happy_ghast_name set from entity @e[limit=1,tag=happy_ghast_to_call] CustomName

# execute give goat horn
execute as @s at @s if entity @e[limit=1,tag=happy_ghast_to_call] run function call_your_happy_ghast:goat_horn_give/goat_horn_give_macro with storage call_your_happy_ghast:root data

tag @e[tag=happy_ghast_to_call] remove happy_ghast_to_call

data remove storage call_your_happy_ghast:root data.UUID
data remove storage call_your_happy_ghast:root data.goat_horn_slot
data remove storage call_your_happy_ghast:root data.goat_horn_instrument
data remove storage call_your_happy_ghast:root data.happy_ghast_UUID_to_call
data remove storage call_your_happy_ghast:root data.happy_ghast_UUID_to_call_0
data remove storage call_your_happy_ghast:root data.happy_ghast_name
data remove storage call_your_happy_ghast:root data.player_name
data remove storage call_your_happy_ghast:root data.audioplayer