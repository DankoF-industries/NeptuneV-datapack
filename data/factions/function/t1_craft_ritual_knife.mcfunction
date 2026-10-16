kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blaze_rod",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",count:8}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:diamond",count:2}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:leather",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:water_bucket",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lava_bucket",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:rabbit_foot",count:1}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:bucket",count:2}}
execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_name":'{"text":"Заграбастик","color":"yellow","italic":false}',"minecraft:max_damage":10,"minecraft:enchantments":{levels:{"minecraft:looting":10}}}}}

tag @s add t1_craft_success
function factions:t1_success_effects