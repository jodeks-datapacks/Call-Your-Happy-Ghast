$execute in minecraft:overworld run forceload add $(latest_position_x) $(latest_position_z)
$execute in minecraft:the_nether run forceload add $(latest_position_x) $(latest_position_z)
$execute in minecraft:the_end run forceload add $(latest_position_x) $(latest_position_z)

data modify storage call_your_happy_ghast:root data.latest_position_x_forceload set from storage call_your_happy_ghast:root data.latest_position_x
data modify storage call_your_happy_ghast:root data.latest_position_z_forceload set from storage call_your_happy_ghast:root data.latest_position_z