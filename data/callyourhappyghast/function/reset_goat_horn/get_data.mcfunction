function callyourhappyghast:get_data/goat_horn_instrument
function callyourhappyghast:get_data/goat_horn_slot

data modify storage callyourhappyghast:root happy_ghast_UUID_from_horn set from entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID

data modify storage callyourhappyghast:root happy_ghast_UUID_from_horn_0 set from entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID_0

function callyourhappyghast:reset_goat_horn/reset with storage callyourhappyghast:root