kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:phantom_membrane",count:3}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cobblestone",count:16}}]
kill @e[type=item,tag=t1_ing,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blaze_rod",count:1}}]

execute positioned ~ ~1.5 ~ run summon item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1,components:{"minecraft:custom_name":'{"text":"Камінь левітації","color":"light_purple","italic":false}',"minecraft:custom_data":{levitation_stone:1b}}}}

tag @s add t1_craft_success
function factions:t1_success_effects