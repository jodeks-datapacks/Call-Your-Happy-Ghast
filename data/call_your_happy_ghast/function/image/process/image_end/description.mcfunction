# Append blank
function call_your_happy_ghast:image/process/append/blank

data modify storage call_your_happy_ghast:image data.tellraw append \
  from storage call_your_happy_ghast:image data.current.description_text

# Append blank
function call_your_happy_ghast:image/process/append/blank

# Append line_break
execute unless score $index.image_data call_your_happy_ghast.image = $length call_your_happy_ghast.image \
  run function call_your_happy_ghast:image/process/append/line_break

# Remove first element from the description
data remove storage call_your_happy_ghast:image data.current.description[0]
 