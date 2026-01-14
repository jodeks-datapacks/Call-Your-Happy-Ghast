data modify storage callyourhappyghast:root player_UUID set from entity @s UUID

function callyourhappyghast:teleport/get_latest_position with storage callyourhappyghast:root

function callyourhappyghast:get_data/leashed_uuid with storage callyourhappyghast:root


execute store result score happy_ghast_UUID_lates_position_x store_position.callyourhappyghast run data get storage callyourhappyghast:root happy_ghast_UUID_latest_position_x

execute store result score happy_ghast_UUID_lates_position_z store_position.callyourhappyghast run data get storage callyourhappyghast:root happy_ghast_UUID_latest_position_z

execute store result storage callyourhappyghast:root happy_ghast_UUID_latest_position_x int 1 run scoreboard players get happy_ghast_UUID_lates_position_x store_position.callyourhappyghast

execute store result storage callyourhappyghast:root happy_ghast_UUID_latest_position_z int 1 run scoreboard players get happy_ghast_UUID_lates_position_z store_position.callyourhappyghast


schedule function callyourhappyghast:teleport/call_initiate 1t