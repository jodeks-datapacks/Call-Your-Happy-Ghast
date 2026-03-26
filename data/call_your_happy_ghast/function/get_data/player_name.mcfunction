execute at @s run loot spawn ~ ~100 ~ loot call_your_happy_ghast:player_head
data modify storage call_your_happy_ghast:root data.player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{call_your_happy_ghast_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{call_your_happy_ghast_playername:1b}}}}]