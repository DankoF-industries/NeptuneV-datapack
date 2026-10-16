advancement revoke @s only factions:spell_flamus

execute if entity @s[level=..9] run function factions:fail
execute if entity @s[level=10..] run function factions:cast_flamus