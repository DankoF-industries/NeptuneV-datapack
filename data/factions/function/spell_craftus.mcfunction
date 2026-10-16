# 1. Скидаємо досягнення
advancement revoke @s only factions:spell_craftus

# 2. Якщо досвіду НЕ вистачає (< 5) -> викликаємо fail
execute if entity @s[level=..4] run function factions:fail

# 3. Якщо досвіду ВИСТАЧАЄ (>= 5) -> запускаємо сканування інвентарю
execute if entity @s[level=5..] run function factions:process_craftus