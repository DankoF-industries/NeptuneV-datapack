# Очищуємо тимчасові теги
tag @e[type=item,distance=..2] remove t1_ing
tag @s remove t1_craft_success

# Позначаємо всі предмети, що лежать на килимі
execute positioned ~ ~1 ~ as @e[type=item,distance=..1.2] run tag @s add t1_ing

# ==================================
# Рецепт 1: Камінь Левітації
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:phantom_membrane",count:3}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:cobblestone",count:16}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:blaze_rod",count:1}}] run function factions:t1_craft_levitation

# ==================================
# Рецепт 2: Кольчуга
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:chain",count:32}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:iron_ingot",count:6}}] run function factions:t1_craft_chainmail

# ==================================
# Рецепт 3: Заграбастик
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:blaze_rod",count:1}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:iron_ingot",count:8}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:diamond",count:2}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:leather",count:1}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:water_bucket",count:1}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:lava_bucket",count:1}}] if entity @e[type=item,tag=t1_ing,nbt={Item:{id:"minecraft:rabbit_foot",count:1}}] run function factions:t1_craft_zagrabastyk