$execute if entity @a[nbt={UUID:$(UUID),RootVehicle:{}},limit=1] run return fail

$execute if entity @e[nbt={UUID:$(UUID_from_item),Passengers:{}},limit=1] run return fail

$ride @a[nbt={UUID:$(UUID)},limit=1] mount @e[nbt={UUID:$(UUID_from_item)},limit=1]

$execute at @e[nbt={UUID:$(UUID_from_item)},limit=1] run playsound entity.happy_ghast.saddle player @a[nbt={UUID:$(UUID)},limit=1] ~ ~ ~ 1 1

scoreboard players set &mounted call_your_happy_ghast.check 1