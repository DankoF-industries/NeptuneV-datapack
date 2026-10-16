advancement revoke @s only factions:spell_wunderlafus

# Якщо менше 5 рівнів -> провал, якщо 5 і більше -> успіх
execute if entity @s[level=..4] run function factions:fail
execute if entity @s[level=5..] run function factions:cast_wunderlafus