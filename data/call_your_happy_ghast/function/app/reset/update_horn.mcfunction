$tag @e[predicate=call_your_happy_ghast:callable,tag=jodek.can_be_called,nbt={UUID:$(UUID_from_item)}] remove jodek.can_be_called

$data remove storage call_your_happy_ghast:root data.happy_ghast_Pos."$(UUID_from_item).x"

$data remove storage call_your_happy_ghast:root data.happy_ghast_Pos."$(UUID_from_item).z"

$execute if data entity @s SelectedItem.components."minecraft:custom_data".audioplayer run return run item replace entity @s hotbar.$(selected_item_slot) with goat_horn[custom_data={tag:{audioplayer:'$(audioplayer)'}}]

$item replace entity @s hotbar.$(selected_item_slot) with goat_horn[instrument="$(instrument)"]