execute unless score &no_player_on_happy_ghast call_your_happy_ghast.config = &no_player_on_happy_ghast call_your_happy_ghast.config run data modify storage call_your_happy_ghast:root data.no_player_on_happy_ghast set value 0

execute unless score &no_player_on_happy_ghast call_your_happy_ghast.config = &no_player_on_happy_ghast call_your_happy_ghast.config run scoreboard players set &no_player_on_happy_ghast call_your_happy_ghast.config 0

data modify storage call_your_happy_ghast:root data.dialog_no_player_on_happy_ghast set value "$(dialog_no_player_on_happy_ghast)"


execute unless score &mount_automatically call_your_happy_ghast.config = &mount_automatically call_your_happy_ghast.config run data modify storage call_your_happy_ghast:root data.mount_automatically set value 0

execute unless score &mount_automatically call_your_happy_ghast.config = &mount_automatically call_your_happy_ghast.config run scoreboard players set &mount_automatically call_your_happy_ghast.config 0

data modify storage call_your_happy_ghast:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"


execute unless score &happy_ghast_owner call_your_happy_ghast.config = &happy_ghast_owner call_your_happy_ghast.config run data modify storage call_your_happy_ghast:root data.happy_ghast_owner set value 0

execute unless score &happy_ghast_owner call_your_happy_ghast.config = &happy_ghast_owner call_your_happy_ghast.config run scoreboard players set &happy_ghast_owner call_your_happy_ghast.config 0

data modify storage call_your_happy_ghast:root data.dialog_happy_ghast_owner set value "$(dialog_happy_ghast_owner)"