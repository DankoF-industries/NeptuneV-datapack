# Віднімаємо XP і забираємо книгу
xp add @s -5 levels
clear @s minecraft:written_book 1

# Накладаємо ефекти
effect give @s minecraft:absorption 15 5
effect give @s minecraft:saturation 15 0

# Ефекти (звук і частинки)
execute at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.2
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 50