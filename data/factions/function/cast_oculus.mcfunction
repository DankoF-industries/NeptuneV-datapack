xp add @s -3 levels
clear @s minecraft:written_book 1

execute at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0.5
execute at @s run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.1 40

# Скляна сфера навколо гравця
execute at @s run fill ~-3 ~-2 ~-3 ~3 ~4 ~3 minecraft:glass hollow
execute at @s run setblock ~3 ~4 ~3 air
execute at @s run setblock ~-3 ~4 ~-3 air
execute at @s run setblock ~3 ~4 ~-3 air
execute at @s run setblock ~-3 ~4 ~3 air
execute at @s run setblock ~3 ~-2 ~3 air
execute at @s run setblock ~-3 ~-2 ~-3 air
execute at @s run setblock ~3 ~-2 ~-3 air
execute at @s run setblock ~-3 ~-2 ~3 air