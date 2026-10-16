kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:chain",count:32}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",count:6}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_helmet",count:1}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_chestplate",count:1}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_leggings",count:1}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_boots",count:1}}

tag @s add t1_craft_success
function factions:t1_success_effects