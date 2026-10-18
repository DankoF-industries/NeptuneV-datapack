# Очищуємо тимчасові теги
tag @e[type=item,distance=..2] remove t1_ing
tag @s remove t1_craft_success

# Позначаємо всі предмети, що лежать на килимі
execute positioned ~ ~1 ~ as @e[type=item,distance=..1.2] run tag @s add t1_ing

# ==================================
# Рецепт 1: Жаб'ячі світильники
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:moss_block",count:32}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:glow_berries",count:16}}] run function factions:t1_craft_froglights

# ==================================
# Рецепт 2: Ритуальний ніж (Оновлений)
# ==================================
# Зверніть увагу: перевіряємо наявність кінетичного сплаву через custom_data
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_data":{kinetic_alloy:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:bone",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:leather",count:1}}] run function factions:t1_craft_ritual_knife

# ==================================
# Рецепт 3: Набір Рейок
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",count:16}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:redstone",count:24}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:quartz",count:4}}] run function factions:t1_craft_rails

# ==================================
# Рецепт 4: Камінь левітації (з Кристалом Глибин)
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{deep_crystal:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:deepslate",count:8}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:cobblestone",count:8}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:netherrack",count:8}}] run function factions:t1_craft_levitation

# ==================================
# Рецепт 5: Підсвічувач
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:glowstone_dust",count:16}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:paper",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:gunpowder",count:6}}] run function factions:t1_craft_highlighter

# ==================================
# Рецепт 6: Іржаві стріли
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:arrow",count:16}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",count:4}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:water_bucket",count:1}}] run function factions:t1_craft_rusty_arrows

# ==================================
# Рецепт 7: Лікувальний Шприц
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",count:2}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:glass_bottle",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:spider_eye",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:rotten_flesh",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:bone_meal",count:1}}] run function factions:t1_craft_healing_syringe

# ==================================
# Рецепт 8: Блок родючого аметисту
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:amethyst_shard",count:16}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{deep_crystal:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:amethyst_block",count:1}}] run function factions:t1_craft_amethyst

# ==================================
# Рецепт 9: Ліхтар будівельника
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:lantern",count:1}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_data":{gold_fragment:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:2}}] run function factions:t1_craft_builder_lantern

# ==================================
# Рецепт 10: Джаггернаут сет
# ==================================
execute if entity @s[tag=!t1_craft_success] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",count:32,components:{"minecraft:custom_data":{kinetic_alloy:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:leather",count:8}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{deep_crystal:1b}}}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:green_dye",count:4}}] if entity @e[type=item,tag=t1_ing,distance=..2,nbt={Item:{id:"minecraft:glow_ink_sac",count:1}}] run function factions:t1_craft_juggernaut