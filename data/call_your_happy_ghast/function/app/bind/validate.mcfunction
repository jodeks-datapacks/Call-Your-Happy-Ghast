execute as @s run function jodek:api/data/get/uuid with storage call_your_happy_ghast:root data

execute as @e[predicate=call_your_happy_ghast:callable,limit=1,tag=jodek.bind_target] unless data entity @s data.Owner run function call_your_happy_ghast:app/bind/set_owner with storage call_your_happy_ghast:root data

execute as @e[predicate=call_your_happy_ghast:callable,limit=1,tag=jodek.bind_target] run data modify storage call_your_happy_ghast:root data.Owner set from entity @s data.Owner

execute store success score &UUID_check call_your_happy_ghast.check run data modify storage call_your_happy_ghast:root data.Owner set from entity @s UUID

execute if score &UUID_check call_your_happy_ghast.check matches 1 run \
  return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_owner",fallback:"You're not the owner of this happy_ghast"}

execute if score &UUID_check call_your_happy_ghast.check matches 0 run function call_your_happy_ghast:app/bind/get_data