kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:arrow",count:16}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",count:4}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:water_bucket",count:1}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:bucket",count:1}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",count:32,components:{"minecraft:custom_name":'{"text":"Іржава Стріла","italic":false}',"minecraft:potion_contents":{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1},{id:"minecraft:wither",amplifier:0,duration:200}]},"minecraft:custom_data":{rusty_arrow:1b}}}}

tag @s add t1_craft_success
function factions:t1_success_effects