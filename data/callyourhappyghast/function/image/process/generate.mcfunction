#> callyourhappyghast:image/process/generate
#
# This function generates the image data.

data modify storage callyourhappyghast:image current.image_data set from storage callyourhappyghast:image image_data
data modify storage callyourhappyghast:image current.description set from storage callyourhappyghast:image description
data modify storage callyourhappyghast:image current.pixel_character set from storage callyourhappyghast:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data callyourhappyghast.image 0
# Set width
execute store result score $width callyourhappyghast.image run data get storage callyourhappyghast:image width
# Set height
execute store result score $height callyourhappyghast.image run data get storage callyourhappyghast:image height
# Set length
scoreboard players operation $length callyourhappyghast.image = $width callyourhappyghast.image
scoreboard players operation $length callyourhappyghast.image *= $height callyourhappyghast.image
# Clear remaining entries in tellraw
data remove storage callyourhappyghast:image tellraw

# Add spacing on top
function callyourhappyghast:image/process/append/line_break
# Loop over image data
function callyourhappyghast:image/process/loop_over_image_data
# Add spacing on bottom
function callyourhappyghast:image/process/append/line_break