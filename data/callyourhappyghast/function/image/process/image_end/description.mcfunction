# Append blank
function callyourhappyghast:image/process/append/blank

data modify storage callyourhappyghast:image tellraw append \
  from storage callyourhappyghast:image current.description_text

# Append blank
function callyourhappyghast:image/process/append/blank

# Append line_break
execute unless score $index.image_data callyourhappyghast.image = $length callyourhappyghast.image \
  run function callyourhappyghast:image/process/append/line_break

# Remove first element from the description
data remove storage callyourhappyghast:image current.description[0]
 