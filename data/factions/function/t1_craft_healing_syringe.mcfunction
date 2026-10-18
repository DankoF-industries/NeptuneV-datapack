kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot",count:2}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:glass_bottle",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spider_eye",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bone_meal",count:1}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:custom_name":'{"text":"Лікувальний Шприц","color":"green","italic":false}',"minecraft:max_damage":10,"minecraft:custom_data":{healing_syringe:1b},"minecraft:enchantments":{levels:{"factions:syringe_effect":1},show_in_tooltip:false}}}}

tag @s add t1_craft_success
function factions:t1_success_effects