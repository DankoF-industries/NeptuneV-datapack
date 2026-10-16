# Очищуємо простір навколо гравця від посадок (якщо він клікав занадто швидко)
execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:saplings
execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:crops
execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:sweet_berry_bush
execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:melon_stem
execute at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace minecraft:pumpkin_stem

# Візуальне та звукове сповіщення
title @s actionbar {"text":"Рослини не можуть вижити на цій глибині!","color":"dark_red"}
playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1

# Забираємо досягнення, щоб система спрацювала під час наступної спроби посадити рослину
advancement revoke @s only factions:deny_plants