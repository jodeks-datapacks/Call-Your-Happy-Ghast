scoreboard players add &time_since_goat_horn_use call_your_happy_ghast.check 1

execute if score &time_since_goat_horn_use call_your_happy_ghast.check matches 2 run function call_your_happy_ghast:app/call/execute/prepare/forceload_add with storage call_your_happy_ghast:root data

$execute if score &teleported call_your_happy_ghast.check matches 0 as @e[predicate=jodek:call_your/can_be_called,limit=1,tag=jodek.can_be_called,nbt={UUID:$(UUID_from_item)}] run function call_your_happy_ghast:app/call/execute/move/validate with storage call_your_happy_ghast:root data

execute if score &time_since_goat_horn_use call_your_happy_ghast.check matches 10 run function call_your_happy_ghast:app/call/execute/post/forceload_remove with storage call_your_happy_ghast:root data

$execute as @a[nbt={UUID:$(UUID)},limit=1] if score &time_since_goat_horn_use call_your_happy_ghast.check matches 12 \
 if score &teleported call_your_happy_ghast.check matches 0 \ 
  run function call_your_happy_ghast:app/feedback/fail_latest_pos {translate:"call_your_happy_ghast.fail.teleport_failed",fallback:"Couldn't find happy_ghast",latest_position_x:"$(latest_position_x)",latest_position_z:"$(latest_position_z)"}

execute if score &time_since_goat_horn_use call_your_happy_ghast.check matches 15.. run schedule clear call_your_happy_ghast:app/call/execute/start

execute if score &time_since_goat_horn_use call_your_happy_ghast.check matches 15.. run function call_your_happy_ghast:app/call/execute/post/clear_data