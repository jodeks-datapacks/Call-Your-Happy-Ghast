# Copy current pixel
data modify storage callyourhappyghast:image current.pixel_color set \
  from storage callyourhappyghast:image current.image_data[0]
data modify storage callyourhappyghast:image current.description_text set \
  from storage callyourhappyghast:image current.description[0]

scoreboard players add $index.image_data callyourhappyghast.image 1

# Calculate column
scoreboard players operation $index.column callyourhappyghast.image = $index.image_data callyourhappyghast.image
scoreboard players operation $index.column callyourhappyghast.image %= $width callyourhappyghast.image

# Calculate row
scoreboard players operation $index.row callyourhappyghast.image = $index.image_data callyourhappyghast.image
scoreboard players operation $index.row callyourhappyghast.image /= $width callyourhappyghast.image

# Append start spacing
execute if score $index.column callyourhappyghast.image matches 1 run \
  function callyourhappyghast:image/process/append/blank

# Append colored pixel
execute unless data storage callyourhappyghast:image current{pixel_color: ''} run \
  function callyourhappyghast:image/process/append/pixel
# Append background pixel
execute if data storage callyourhappyghast:image current{pixel_color: ''} run \
  function callyourhappyghast:image/process/append/background

# Append description
execute if score $index.column callyourhappyghast.image matches 0 run \
    function callyourhappyghast:image/process/image_end/description

# Remove first element from the image_data array
data remove storage callyourhappyghast:image current.image_data[0]
# Loop over rows
execute if score $index.row callyourhappyghast.image < $height callyourhappyghast.image run \
  function callyourhappyghast:image/process/loop_over_image_data
 