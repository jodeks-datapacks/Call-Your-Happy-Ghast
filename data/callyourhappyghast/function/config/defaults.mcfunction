execute unless score &no_player_on_happy_ghast callyourhappyghast.config = &no_player_on_happy_ghast callyourhappyghast.config run data modify storage callyourhappyghast:root data.no_player_on_happy_ghast set value 0

execute unless score &no_player_on_happy_ghast callyourhappyghast.config = &no_player_on_happy_ghast callyourhappyghast.config run scoreboard players set &no_player_on_happy_ghast callyourhappyghast.config 0

data modify storage callyourhappyghast:root data.dialog_no_player_on_happy_ghast set value "$(dialog_no_player_on_happy_ghast)"


execute unless score &mount_automatically callyourhappyghast.config = &mount_automatically callyourhappyghast.config run data modify storage callyourhappyghast:root data.mount_automatically set value 0

execute unless score &mount_automatically callyourhappyghast.config = &mount_automatically callyourhappyghast.config run scoreboard players set &mount_automatically callyourhappyghast.config 0

data modify storage callyourhappyghast:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"


execute unless score &happy_ghast_owner callyourhappyghast.config = &happy_ghast_owner callyourhappyghast.config run data modify storage callyourhappyghast:root data.happy_ghast_owner set value 0

execute unless score &happy_ghast_owner callyourhappyghast.config = &happy_ghast_owner callyourhappyghast.config run scoreboard players set &happy_ghast_owner callyourhappyghast.config 0

data modify storage callyourhappyghast:root data.dialog_happy_ghast_owner set value "$(dialog_happy_ghast_owner)"