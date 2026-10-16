# --- Покарання для "Потолочь" (якщо вони на висоті Y=60 або вище) ---
execute as @a[tag=potoloch] at @s if entity @s[y=60,dy=320] run effect give @s minecraft:wither 3 3 true
execute as @a[tag=potoloch] at @s if entity @s[y=60,dy=320] run effect give @s minecraft:blindness 3 0 true
execute as @a[tag=potoloch] at @s if entity @s[y=60,dy=320] run effect give @s minecraft:slowness 3 1 true

# --- Покарання для "Піднесених" (якщо вони на висоті Y=59 або нижче) ---
execute as @a[tag=pidneseni] at @s if entity @s[y=-64,dy=123] run effect give @s minecraft:wither 3 3 true
execute as @a[tag=pidneseni] at @s if entity @s[y=-64,dy=123] run effect give @s minecraft:blindness 3 0 true
execute as @a[tag=pidneseni] at @s if entity @s[y=-64,dy=123] run effect give @s minecraft:slowness 3 1 true

# 1. Розміщення нових верстаків (якщо гравець клікнув яйцем)
execute as @e[type=marker,tag=t1_workbench_new] at @s run function factions:t1_setup

# 2. Сканування предметів на існуючих верстаках
execute as @e[type=marker,tag=t1_workbench] at @s run function factions:t1_craft_check

# 3. Обробка Каменя Левітації у руці
execute as @a if items entity @s weapon.mainhand minecraft:cobblestone[minecraft:custom_data={levitation_stone:1b}] run effect give @s minecraft:levitation 2 1 true
execute as @a if items entity @s weapon.offhand minecraft:cobblestone[minecraft:custom_data={levitation_stone:1b}] run effect give @s minecraft:levitation 2 1 true