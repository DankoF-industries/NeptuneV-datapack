xp add @s -10 levels
clear @s minecraft:written_book 1

execute at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 1 0.8

# Промінь духовного вогню за поглядом гравця (10 блоків)
execute at @s positioned ^ ^1 ^2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:soul_fire replace air
execute at @s positioned ^ ^1 ^4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:soul_fire replace air
execute at @s positioned ^ ^1 ^6 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:soul_fire replace air
execute at @s positioned ^ ^1 ^8 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:soul_fire replace air
execute at @s positioned ^ ^1 ^10 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:soul_fire replace air

# Ефект частинок уздовж променя
execute at @s positioned ^ ^1 ^5 run particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 0.1 100