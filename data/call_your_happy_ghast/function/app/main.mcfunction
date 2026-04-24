execute as @a[scores={call_your_happy_ghast.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_happy_ghast:app/bind/start

execute as @a[x_rotation=-90,scores={call_your_happy_ghast.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_happy_ghast:app/reset/start

execute as @a[scores={call_your_happy_ghast.sneak_time=40..}] run scoreboard players set @a call_your_happy_ghast.sneak_time 0

scoreboard players enable @a call_your_happy_ghast.config
execute as @a if score @s call_your_happy_ghast.config matches 1 run \
 function call_your_happy_ghast:config/dialog_config with storage call_your_happy_ghast:root data