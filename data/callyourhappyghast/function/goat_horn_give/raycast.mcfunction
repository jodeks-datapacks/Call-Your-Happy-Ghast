execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[distance=..10,type=happy_ghast] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run return run function callyourhappyghast:goat_horn_give/tag

scoreboard players add #steps raycast_steps.callyourhappyghast 1

execute if score #steps raycast_steps.callyourhappyghast <= #max raycast_steps.callyourhappyghast positioned ^ ^ ^0.1 run function callyourhappyghast:goat_horn_give/raycast