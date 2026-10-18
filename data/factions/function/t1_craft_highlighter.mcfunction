kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:glowstone_dust",count:16}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:paper",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gunpowder",count:6}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone",count:1,components:{"minecraft:custom_name":'{"text":"Підсвічувач","color":"yellow","italic":false}',"minecraft:custom_data":{highlighter:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true},"minecraft:consumable":{consume_seconds:1.5,animation:"drink",sound:"minecraft:entity.generic.drink"}}}}

tag @s add t1_craft_success
function factions:t1_success_effects