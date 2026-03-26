
$execute in minecraft:overworld run forceload add $(happy_ghast_UUID_latest_position_x) $(happy_ghast_UUID_latest_position_z)
$execute in minecraft:the_nether run forceload add $(happy_ghast_UUID_latest_position_x) $(happy_ghast_UUID_latest_position_z)
$execute in minecraft:the_end run forceload add $(happy_ghast_UUID_latest_position_x) $(happy_ghast_UUID_latest_position_z)

data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_latest_position_x_forceload set from storage call_your_happy_ghast:root data.happy_ghast_UUID_latest_position_x
data modify storage call_your_happy_ghast:root data.happy_ghast_UUID_latest_position_z_forceload set from storage call_your_happy_ghast:root data.happy_ghast_UUID_latest_position_z
