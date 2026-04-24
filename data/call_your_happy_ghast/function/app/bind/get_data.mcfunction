execute as @s run function jodek:api/data/get/audioplayer with storage call_your_happy_ghast:root data
execute as @s run function jodek:api/data/get/instrument with storage call_your_happy_ghast:root data
execute as @s run function jodek:api/data/get/player_name with storage call_your_happy_ghast:root data
execute as @s run function jodek:api/data/get/selected_item_slot with storage call_your_happy_ghast:root data

execute as @e[limit=1,tag=jodek.bind_target,distance=..10] run function jodek:api/data/get/uuid with storage call_your_happy_ghast:root data
execute as @e[limit=1,tag=jodek.bind_target,distance=..10] run function jodek:api/data/get/custom_name with storage call_your_happy_ghast:root data

execute unless data entity @s SelectedItem.components."minecraft:custom_data".audioplayer run execute unless data storage call_your_happy_ghast:root data.instrument run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_instrument",fallback:"Failed to get instrument from item"}
execute unless data storage call_your_happy_ghast:root data.player_name run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_player_name",fallback:"Failed to get player name"}
execute unless data storage call_your_happy_ghast:root data.selected_item_slot run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_selected_item_slot",fallback:"Failed to get selected item slot"}
execute unless data storage call_your_happy_ghast:root data.custom_name run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_custom_name",fallback:"Failed to get entity name (Name it if you haven't)"}

execute as @s if entity @e[limit=1,tag=jodek.bind_target,distance=..10] run function call_your_happy_ghast:app/bind/update_horn with storage call_your_happy_ghast:root data

execute as @e[limit=1,tag=jodek.bind_target,distance=..10] at @s run function call_your_happy_ghast:app/feedback/success