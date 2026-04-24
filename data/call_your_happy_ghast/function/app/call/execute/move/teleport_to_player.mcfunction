$teleport @s @a[nbt={UUID:$(UUID)},limit=1]

execute if data entity @s leash run function call_your_happy_ghast:app/call/execute/move/teleport_leashed_to_player with entity @s

scoreboard players set &teleported call_your_happy_ghast.check 1

execute if score &mount_automatically call_your_happy_ghast.config matches 1 if score &mounted call_your_happy_ghast.check matches 0 run function call_your_happy_ghast:app/call/execute/post/mount with storage call_your_happy_ghast:root data