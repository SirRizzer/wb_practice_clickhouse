# wb_practice_clickhouse
1)	Поднять кликхаус в докере
docker run -d --name some-clickhouse-server -p 8123:8123 --ulimit nofile=262144:262144 clickhouse/clickhouse-server
<img width="468" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/ed343c24-aef6-48bf-820d-3c30dc8c4e9f">

2)	Настроить пользователя администратора</br> 
[task2.sql](https://github.com/SirRizzer/wb_practice_clickhouse/blob/main/task2.sql)

3)	Создать базы для стейджинга, исторических данных, текущих данных и буферных таблиц </br>
[task3.sql](https://github.com/SirRizzer/wb_practice_clickhouse/blob/main/task3.sql)
 <img width="376" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/61657db3-1f3b-47bb-94b3-c2c2ae25af71">

4)Создать роль только для чтения и роль с возможность создавать и заполнять данные в БД стейджинга(stg). Создать двух пользователей с такими правами по умолчанию. </br> 
[task4.sql](https://github.com/SirRizzer/wb_practice_clickhouse/blob/main/task4.sql) </br>
<img width="468" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/dec419de-d7fd-4d01-8de1-0b17a79155e2">

5)	Реализовать через буфферную таблицу заполнение stg слоя </br>
[task5.sql](https://github.com/SirRizzer/wb_practice_clickhouse/blob/main/task5.sql)

6)	Создать матереализованное представление для перемещения данных из stg слоя в слой текущих данных </br>
[task6.sql](https://github.com/SirRizzer/wb_practice_clickhouse/tree/main)

7)	Смоделировать вставку данных в буфферную таблицу для stg слоя. В конечном итоге данные должны быть заполнены и в stg слое, и в слое текущих данных. Команды для выполнениния пунктов 2-7 включительно, выложить в свой git. Каждый пункт - отдельный файл Для пункта 7 необходимы скриншоты данных в таблице stg и current слоя P.S. просьба делать осмысленную структуру таблицы(поля). Их может быть 3-4, но чтобы они могли нести какую то потенциально полезную информацию. </br>
<img width="468" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/377964e2-fee3-4b1e-81de-8601f0ea0c55"> </br>
<img width="468" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/43c3aaf6-a62f-433e-993a-4ad2603f75e0"> </br>
<img width="468" alt="image" src="https://github.com/SirRizzer/wb_practice_clickhouse/assets/61479067/fbcef485-1c21-4fa9-97b9-1d6e87bd5125"> </br>




 
 
 
