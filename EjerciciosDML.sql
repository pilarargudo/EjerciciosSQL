# LENGUAJE DML
# 1. Utilizando la base de datos Sakila (BD de Pruebas de MySQL) Extraer todos los actores de la tabla actors.
use sakila;
SELECT * FROM sakila.actor; 
# 200 rows

# 2. De la tabla actors queremos conocer todos los nombres existentes en la tabla sin que se repita para ello utilizaremos DISTINCT.
SELECT DISTINCT first_name FROM sakila.actor; 
# 128 rows

# 3. De la tabla film queemos obtenter una relación de películas que cumplan las siguientes características:
# rental_duration = 6
# rental_rate >=2.99
SELECT * FROM sakila.film WHERE (rental_duration=6 AND rental_rate>=2.99); 
# 136 rows

# 4. De la tabla film queremos obtener una relación de la peliculas que tengan un replacement_cost entre 15.99 y 22.99
SELECT * FROM sakila.film WHERE (replacement_cost BETWEEN 15.99 AND 22.99); 
# 381 rows

