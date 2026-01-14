
scoreboard objectives add check.callyourhappyghast dummy

scoreboard objectives add use_goat_horn_happy_ghast used:goat_horn

scoreboard objectives add store_position.callyourhappyghast dummy

scoreboard objectives add sneak_time.callyourhappyghast custom:sneak_time

scoreboard objectives add callyourhappyghast.image dummy

scoreboard objectives add raycast_steps.callyourhappyghast dummy

scoreboard objectives add callyourhappyghast.config trigger

scoreboard players set @a sneak_time.callyourhappyghast 0

scoreboard players set @a callyourhappyghast.config 0

scoreboard players set @a use_goat_horn_happy_ghast 0
scoreboard players set &time_since_goat_horn_use check.callyourhappyghast 0

scoreboard players set &teleported check.callyourhappyghast 0

scoreboard players set &mounted check.callyourhappyghast 0

scoreboard objectives add callyourhappyghast.bound_goat_horns dummy


function callyourhappyghast:config/image

schedule function callyourhappyghast:schedule_save_uuid 1s

function callyourhappyghast:config/defaults