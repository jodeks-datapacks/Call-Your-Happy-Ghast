$execute unless entity @s[predicate=call_your_happy_ghast:no_player_on_mount] run execute as @a[nbt={UUID:$(UUID)},limit=1] run return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.player_on_happy_ghast",fallback:"There's a player on the happy_ghast"}

execute as @s run data modify storage call_your_happy_ghast:root data.Owner set from entity @s data.Owner

data modify storage call_your_happy_ghast:root data.UUID_temp set from storage call_your_happy_ghast:root data.UUID
execute store success score &UUID_check call_your_happy_ghast.check run data modify storage call_your_happy_ghast:root data.UUID_temp set from entity @s data.Owner

execute unless data entity @s data.Owner run scoreboard players set &UUID_check call_your_happy_ghast.check 1

$execute as @a[nbt={UUID:$(UUID)},limit=1] if score &UUID_check call_your_happy_ghast.check matches 1 run \
  return run function call_your_happy_ghast:app/feedback/fail {translate:"call_your_happy_ghast.fail.no_owner",fallback:"You're not the owner of this happy_ghast"}

execute as @s if score &UUID_check call_your_happy_ghast.check matches 0 run function call_your_happy_ghast:app/call/execute/move/teleport_to_player with storage call_your_happy_ghast:root data