advancement revoke @s only factions:spell_oculus

execute if entity @s[level=..2] run function factions:fail
execute if entity @s[level=3..] run function factions:cast_oculus