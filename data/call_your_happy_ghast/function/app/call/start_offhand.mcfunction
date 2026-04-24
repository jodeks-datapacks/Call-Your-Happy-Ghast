advancement revoke @s only call_your_happy_ghast:used/goat_horn_offhand

scoreboard players set &UUID_check call_your_happy_ghast.check 1

execute as @s run function jodek:api/data/get/offhand_stored_uuid with storage call_your_happy_ghast:root data

execute unless data storage call_your_happy_ghast:root data.UUID_from_item run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_uuid_item",fallback:"Failed to get entity UUID from item"}
# execute unless score &time_since_goat_horn_use call_your_happy_ghast.check matches 0 run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.call_already_in_progress",fallback:"Your happy_ghast didn't hear you, try again"}

execute as @s run function call_your_happy_ghast:app/call/get_data with storage call_your_happy_ghast:root