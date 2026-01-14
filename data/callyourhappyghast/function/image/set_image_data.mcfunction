#> callyourhappyghast:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage callyourhappyghast:image image_data  
# @writes storage callyourhappyghast:image width  
# @writes storage callyourhappyghast:image height  
# @writes storage callyourhappyghast:image background_color  
# @writes storage callyourhappyghast:image description  
# @writes storage callyourhappyghast:image pixel_character.blank  
# @writes storage callyourhappyghast:image pixel_character.chat  
# @writes storage callyourhappyghast:image pixel_character.lore

data remove storage callyourhappyghast:image image_data
data remove storage callyourhappyghast:image width
data remove storage callyourhappyghast:image height
data remove storage callyourhappyghast:image background_color
data remove storage callyourhappyghast:image description

$data modify storage callyourhappyghast:image image_data set value $(image_data)
$data modify storage callyourhappyghast:image width set value $(width)
$data modify storage callyourhappyghast:image height set value $(height)
$data modify storage callyourhappyghast:image background_color set value "$(background_color)"
$data modify storage callyourhappyghast:image description set value $(description)

data modify storage callyourhappyghast:image pixel_character.blank set value "　"
data modify storage callyourhappyghast:image pixel_character.pixel set value "▌▌"
data modify storage callyourhappyghast:image pixel_character.line_break set value '\n'

function callyourhappyghast:image/process/generate
