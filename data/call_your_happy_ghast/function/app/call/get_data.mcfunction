execute as @s run function jodek:api/data/get/uuid with storage call_your_happy_ghast:root data

function jodek:api/data/get/latest_position with storage call_your_happy_ghast:root data

execute unless data storage call_your_happy_ghast:root data.UUID run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_uuid",fallback:"Failed to get entity UUID"}
execute unless data storage call_your_happy_ghast:root data.latest_position_x run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_latest_position",fallback:"Failed to get latest position"}

function call_your_happy_ghast:app/call/execute/start