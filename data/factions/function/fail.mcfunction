# Забираємо 1 підписану книгу з інвентарю
clear @s minecraft:written_book 1

# Звук та частинки ПОБЛИЗУ ГРАВЦЯ (at @s)
execute at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 20

# Повідомлення
title @s actionbar {"text":"Недостатньо досвіду для закляття!","color":"red"}