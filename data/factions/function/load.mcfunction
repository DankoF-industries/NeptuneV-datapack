# Ініціалізація scoreboards для системи крафту
scoreboard objectives add forge_temp dummy "Змінні Верстака"

# Ініціалізація scoreboards для системи магії та таймерів
scoreboard objectives add block_timer dummy "Таймер магічних блоків"

# Повідомлення для адміністраторів у консоль або чат про успішне завантаження
tellraw @a[permission_level=2..] {"text":"[NeptuneV] Системні змінні та датапак успішно завантажено!","color":"green"}