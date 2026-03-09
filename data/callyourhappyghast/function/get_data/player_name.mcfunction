execute at @s run loot spawn ~ ~100 ~ loot callyourhappyghast:player_head
data modify storage callyourhappyghast:root data.player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyourhappyghast_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyourhappyghast_playername:1b}}}}]