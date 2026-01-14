
execute as @a[scores={use_goat_horn_happy_ghast=1..},nbt={SelectedItem:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_happy_ghast:1b}}}}}] run function callyourhappyghast:teleport/get_uuid_selected_item

execute as @a[scores={use_goat_horn_happy_ghast=1..},nbt={equipment:{offhand:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_happy_ghast:1b}}}}}}] run function callyourhappyghast:teleport/get_uuid_offhand

scoreboard players set @a use_goat_horn_happy_ghast 0

# sneak time counter
execute as @a[scores={sneak_time.callyourhappyghast=40..},predicate=callyourhappyghast:looking_at] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] unless data entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID run function callyourhappyghast:goat_horn_give/get_horn_to_call

execute as @a[x_rotation=-90,scores={sneak_time.callyourhappyghast=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] if data entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID run function callyourhappyghast:reset_goat_horn/get_data

execute as @a[scores={sneak_time.callyourhappyghast=40..}] run scoreboard players set @a sneak_time.callyourhappyghast 0

scoreboard players enable @a callyourhappyghast.config
execute as @a if score @s callyourhappyghast.config matches 1 run \
 function callyourhappyghast:config/dialog_config with storage callyourhappyghast:root