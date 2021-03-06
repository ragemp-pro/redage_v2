# # (redage_v2) Установка сборки  

# Windows:  
* Разархивировать архив в удобное для вас место (в пути до папки сервера не должно быть пробелов и русских символов).
* Установить дополнительное ПО для сервера баз данных (MySQL (mariadb) / XAMPP / OpenServer).
* Установить Visual Studio с набором разработки - .NET ([подробнее](https://ragemp.pro/threads/s-nastrojka-robochej-sredy-dlja-razrabotki-pod-ragemp.739/))
* Открыть проект по пути - **redage_v2/server/dotnet/resources/redagev2.sln**
* В решении находим проект **server** и в нем файл **MySQL.cs** (редактируем свои данные MySQL).
* Создаем две базы данных, одну - называем так как указали в файле, другую также, но в конце дописываем **logs**,  
должно получится две БД (server, server**logs**).
* Импортируем дампы базы данных в эти БД (путь до дампов - **redage_v2/database**
* Собираем и компилируем решение (Сборка -> Пересобрать).
* Запускаем сервер по пути - **redage_v2\server\ragemp-server.exe**
* Не забываем загрузить и установить dlcpacks (GitHub не дает загрузить большие файлы) (в конце ссылка на актуальный архив).

# Linux (Debian 10): 
* [Как установить сборку сервера RedAge RP на Linux (Debian 10) | RAGE:MP 1.1](https://ragemp.pro/threads/kak-ustanovit-sborku-servera-redage-rp-na-linux-debian-10-rage-mp-1-1.1225/)

**Внимание!** При изменении конфигурационых данных MySQL не забывайте удалять файл **Settings.db** (в корневой папке сервера). Там находится кэш настроек. 

Скомпилированные файлы сервера находятся тут - **redage_v2\server\dotnet\resources\client\bin\x64\Debug\netcoreapp3.1**  
Архив dlcpacks - https://drive.google.com/file/d/1vavjgG_jBOrtkOZ0yiiDQxJH46V8HOCH/view?usp=sharing  
(содержимое скопировать по пути - **redage_v2\server\client_packages\game_resources\dlcpacks**)

Видео:  
[![REDAGE V2.4 INSTALL](https://img.youtube.com/vi/RPsyAkdOMvg/0.jpg)](https://www.youtube.com/watch?v=RPsyAkdOMvg)
