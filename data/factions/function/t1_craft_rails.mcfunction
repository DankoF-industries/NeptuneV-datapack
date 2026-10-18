kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",count:16}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:redstone",count:24}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:quartz",count:4}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:rail",count:64}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:powered_rail",count:16}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:activator_rail",count:16}}

tag @s add t1_craft_success
function factions:t1_success_effects