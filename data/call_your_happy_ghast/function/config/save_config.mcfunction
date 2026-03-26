$data modify storage call_your_happy_ghast:root data.no_player_on_happy_ghast set value $(dialog_no_player_on_happy_ghast)

$scoreboard players set &no_player_on_happy_ghast call_your_happy_ghast.config $(dialog_no_player_on_happy_ghast)

data modify storage call_your_happy_ghast:root data.dialog_no_player_on_happy_ghast set value "$(dialog_no_player_on_happy_ghast)"


$data modify storage call_your_happy_ghast:root data.mount_automatically set value $(dialog_mount_automatically)

$scoreboard players set &mount_automatically call_your_happy_ghast.config $(dialog_mount_automatically)

data modify storage call_your_happy_ghast:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"


$data modify storage call_your_happy_ghast:root data.happy_ghast_owner set value $(dialog_happy_ghast_owner)

$scoreboard players set &happy_ghast_owner call_your_happy_ghast.config $(dialog_happy_ghast_owner)

data modify storage call_your_happy_ghast:root data.dialog_happy_ghast_owner set value "$(dialog_happy_ghast_owner)"