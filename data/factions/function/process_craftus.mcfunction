# Очищаємо всі теги перед початком
tag @s remove crafted
tag @s remove craft_1
tag @s remove craft_2
tag @s remove craft_3

# ==========================================
# РЕЦЕПТ 1: Кінетичний сплав
# ==========================================
# ДОДАНО [!minecraft:custom_data] щоб не зжерти артефакти гравця замість ванільних ресурсів!
execute store result score #gold forge_temp run clear @s minecraft:gold_ingot[!minecraft:custom_data] 0
execute store result score #iron forge_temp run clear @s minecraft:iron_ingot[!minecraft:custom_data] 0
execute store result score #scrap forge_temp run clear @s minecraft:netherite_scrap[!minecraft:custom_data] 0
execute store result score #redstone forge_temp run clear @s minecraft:redstone[!minecraft:custom_data] 0
execute store result score #glowstone forge_temp run clear @s minecraft:glowstone_dust[!minecraft:custom_data] 0

execute if score #gold forge_temp matches 2.. if score #iron forge_temp matches 1.. if score #scrap forge_temp matches 2.. if score #redstone forge_temp matches 1.. if score #glowstone forge_temp matches 1.. run tag @s add craft_1

execute if entity @s[tag=craft_1] run clear @s minecraft:gold_ingot[!minecraft:custom_data] 2
execute if entity @s[tag=craft_1] run clear @s minecraft:iron_ingot[!minecraft:custom_data] 1
execute if entity @s[tag=craft_1] run clear @s minecraft:netherite_scrap[!minecraft:custom_data] 2
execute if entity @s[tag=craft_1] run clear @s minecraft:redstone[!minecraft:custom_data] 1
execute if entity @s[tag=craft_1] run clear @s minecraft:glowstone_dust[!minecraft:custom_data] 1
execute if entity @s[tag=craft_1] run give @s minecraft:gold_ingot[minecraft:custom_name='{"text":"Кінетичний Сплав","color":"gold","italic":false}',minecraft:custom_data={kinetic_alloy:1b}] 1
execute if entity @s[tag=craft_1] run tag @s add crafted

# ==========================================
# РЕЦЕПТ 2: Кристал глибин
# ==========================================
execute store result score #dia forge_temp run clear @s minecraft:diamond[!minecraft:custom_data] 0
execute store result score #eme forge_temp run clear @s minecraft:emerald[!minecraft:custom_data] 0
execute store result score #lap forge_temp run clear @s minecraft:lapis_lazuli[!minecraft:custom_data] 0
execute store result score #ame forge_temp run clear @s minecraft:amethyst_shard[!minecraft:custom_data] 0
execute store result score #qua forge_temp run clear @s minecraft:quartz[!minecraft:custom_data] 0

execute if entity @s[tag=!crafted] if score #dia forge_temp matches 1.. if score #eme forge_temp matches 1.. if score #lap forge_temp matches 1.. if score #ame forge_temp matches 1.. if score #qua forge_temp matches 1.. run tag @s add craft_2

execute if entity @s[tag=craft_2] run clear @s minecraft:diamond[!minecraft:custom_data] 1
execute if entity @s[tag=craft_2] run clear @s minecraft:emerald[!minecraft:custom_data] 1
execute if entity @s[tag=craft_2] run clear @s minecraft:lapis_lazuli[!minecraft:custom_data] 1
execute if entity @s[tag=craft_2] run clear @s minecraft:amethyst_shard[!minecraft:custom_data] 1
execute if entity @s[tag=craft_2] run clear @s minecraft:quartz[!minecraft:custom_data] 1
execute if entity @s[tag=craft_2] run give @s minecraft:diamond[minecraft:custom_name='{"text":"Кристал Глибин","color":"aqua","italic":false}',minecraft:custom_data={deep_crystal:1b}] 1
execute if entity @s[tag=craft_2] run tag @s add crafted

# ==========================================
# РЕЦЕПТ 3: Фрагменти зірки
# ==========================================
execute store result score #star forge_temp run clear @s minecraft:nether_star[!minecraft:custom_data] 0

execute if entity @s[tag=!crafted] if score #star forge_temp matches 1.. run tag @s add craft_3

execute if entity @s[tag=craft_3] run clear @s minecraft:nether_star[!minecraft:custom_data] 1
execute if entity @s[tag=craft_3] run give @s minecraft:gold_nugget[minecraft:custom_name='{"text":"Жовтий Уламок","color":"yellow","italic":false}',minecraft:custom_data={yellow_fragment:1b}] 3
execute if entity @s[tag=craft_3] run give @s minecraft:iron_nugget[minecraft:custom_name='{"text":"Срібний Уламок","color":"white","italic":false}',minecraft:custom_data={silver_fragment:1b}] 2
execute if entity @s[tag=craft_3] run give @s minecraft:quartz[minecraft:custom_name='{"text":"Кришталь Зірки","color":"white","italic":false}',minecraft:custom_data={star_crystal:1b}] 1
execute if entity @s[tag=craft_3] run tag @s add crafted

# ==========================================
# ФІНАЛ (УСПІХ АБО НЕВДАЧА)
# ==========================================
execute if entity @s[tag=crafted] run clear @s minecraft:written_book 1
execute if entity @s[tag=crafted] run xp add @s -5 levels
execute if entity @s[tag=crafted] at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=crafted] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 30

execute if entity @s[tag=!crafted] run function factions:fail