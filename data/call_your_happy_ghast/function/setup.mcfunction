scoreboard objectives add jodek.config dummy
execute unless score &call_your_happy_ghast_load_message jodek.config = &call_your_happy_ghast_load_message jodek.config run scoreboard players set &call_your_happy_ghast_load_message jodek.config 1
execute unless score &call_your_happy_ghast_advancements jodek.config = &call_your_happy_ghast_advancements jodek.config run scoreboard players set &call_your_happy_ghast_advancements jodek.config 1

scoreboard objectives add check.call_your_happy_ghast dummy

scoreboard objectives add use_goat_horn_happy_ghast used:goat_horn

scoreboard objectives add store_position.call_your_happy_ghast dummy

scoreboard objectives add sneak_time.call_your_happy_ghast custom:sneak_time

scoreboard objectives add call_your_happy_ghast.image dummy

scoreboard objectives add raycast_steps.call_your_happy_ghast dummy

scoreboard objectives add call_your_happy_ghast.config trigger

scoreboard players set @a sneak_time.call_your_happy_ghast 0

scoreboard players set @a call_your_happy_ghast.config 0

scoreboard players set @a use_goat_horn_happy_ghast 0
scoreboard players set &time_since_goat_horn_use check.call_your_happy_ghast 0

scoreboard players set &teleported check.call_your_happy_ghast 0

scoreboard players set &mounted check.call_your_happy_ghast 0

scoreboard objectives add call_your_happy_ghast.bound_goat_horns dummy

function call_your_happy_ghast:config/image

schedule function call_your_happy_ghast:schedule_save_uuid 1s

function call_your_happy_ghast:config/defaults