# Будуємо структуру
setblock ~ ~ ~ minecraft:netherite_block
setblock ~ ~1 ~ minecraft:green_carpet
setblock ~1 ~ ~ minecraft:nether_brick_fence
setblock ~-1 ~ ~ minecraft:nether_brick_fence
setblock ~ ~ ~1 minecraft:nether_brick_fence
setblock ~ ~ ~-1 minecraft:nether_brick_fence

# Змінюємо тег маркера, щоб він став активним "сканером"
tag @s remove t1_workbench_new
tag @s add t1_workbench