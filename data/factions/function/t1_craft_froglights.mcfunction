kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:moss_block",count:32}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:glow_berries",count:16}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:ochre_froglight",count:16}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:verdant_froglight",count:16}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:pearlescent_froglight",count:16}}

tag @s add t1_craft_success
function factions:t1_success_effects