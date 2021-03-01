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

Скомпилированные файлы сервера находятся тут - **redage_v2\server\dotnet\resources\client\bin\x64\Debug\netcoreapp3.1**  
Архив dlcpacks - https://drive.google.com/file/d/1vavjgG_jBOrtkOZ0yiiDQxJH46V8HOCH/view?usp=sharing  
(содержимое скопировать по пути - **redage_v2\server\client_packages\game_resources\dlcpacks**)
