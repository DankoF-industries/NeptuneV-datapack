kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_data":{kinetic_alloy:1b}}}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bone",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:leather",count:1}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:custom_name":'{"text":"Ритуальний ніж","color":"dark_red","italic":false}',"minecraft:max_damage":10,"minecraft:enchantments":{levels:{"minecraft:looting":10}},"minecraft:custom_data":{ritual_knife:1b}}}}

tag @s add t1_craft_success
function factions:t1_success_effects