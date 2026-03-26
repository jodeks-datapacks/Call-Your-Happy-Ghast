#> call_your_happy_ghast:image/process/generate
#
# This function generates the image data.

data modify storage call_your_happy_ghast:image data.current.image_data set from storage call_your_happy_ghast:image data.image_data
data modify storage call_your_happy_ghast:image data.current.description set from storage call_your_happy_ghast:image data.description
data modify storage call_your_happy_ghast:image data.current.pixel_character set from storage call_your_happy_ghast:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data call_your_happy_ghast.image 0
# Set width
execute store result score $width call_your_happy_ghast.image run data get storage call_your_happy_ghast:image data.width
# Set height
execute store result score $height call_your_happy_ghast.image run data get storage call_your_happy_ghast:image data.height
# Set length
scoreboard players operation $length call_your_happy_ghast.image = $width call_your_happy_ghast.image
scoreboard players operation $length call_your_happy_ghast.image *= $height call_your_happy_ghast.image
# Clear remaining entries in tellraw
data remove storage call_your_happy_ghast:image data.tellraw

# Add spacing on top
function call_your_happy_ghast:image/process/append/line_break
# Loop over image data
function call_your_happy_ghast:image/process/loop_over_image_data
# Add spacing on bottom
function call_your_happy_ghast:image/process/append/line_break