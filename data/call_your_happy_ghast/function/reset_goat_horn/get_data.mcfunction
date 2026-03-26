function call_your_happy_ghast:get_data/goat_horn_instrument
function call_your_happy_ghast:get_data/goat_horn_slot

data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_from_horn set from entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID

data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_from_horn_0 set from entity @s SelectedItem.components."minecraft:custom_data".happy_ghast_call.UUID_0

function call_your_happy_ghast:reset_goat_horn/reset with storage call_your_happy_ghast:root data