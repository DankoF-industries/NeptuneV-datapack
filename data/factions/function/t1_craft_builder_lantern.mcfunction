kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:lantern",count:1}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_data":{gold_fragment:1b}}}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gold_ingot",count:2}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:lantern",count:1,components:{"minecraft:custom_name":'{"text":"Ліхтар будівельника","color":"gold","italic":false}',"minecraft:attribute_modifiers":{modifiers:[{type:"minecraft:player.block_interaction_range",id:"builder_lantern_range",amount:5.5,operation:"add_value",slot:"offhand"}]},"minecraft:custom_data":{builder_lantern:1b}}}}

tag @s add t1_craft_success
function factions:t1_success_effects