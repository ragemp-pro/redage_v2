
# # (redage_v2) Готовая сборка RedAge RP V2.0 (RAGE:MP 1.1)

Сборка на основе оригинального NeptuneEvo. Версия RAGE Multiuplayer 1.1.

![Скриншот](https://i.imgur.com/WUUQtC6.jpg)
Подробное описание и скришоты: https://ragemp.pro/resources/gotovaja-sborka-redage-rp-v2-0-rage-mp-1-1.63/

Если при регистрации на сервере не сохраняются аккаунты и в консоли есть такая ошибка:
![](https://i.imgur.com/HMv0gTU.png)

Значит у вас включен строгий режим на сервере MySQL, чтобы исправить данную ошибку можете просто отключить строгий режим.
Для этого в MySQL (query) от пользователя root выполните команду:

`
SET sql_mode = '';
`
