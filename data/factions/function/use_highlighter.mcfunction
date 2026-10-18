# 1. Забираємо досягнення, щоб його можна було отримати знову
advancement revoke @s only factions:use_highlighter

# 2. Видаємо ефект світіння всім гравцям у радіусі 100 блоків на 60 секунд (без часточок: true/false на ваш вибір, тут стоїть false)
effect give @a[distance=..100] minecraft:glowing 60 0 false

# 3. Додаємо звуковий ефект спалаху для атмосфери (опціонально)
playsound minecraft:block.beacon.activate master @a[distance=..100] ~ ~ ~ 1 1.2