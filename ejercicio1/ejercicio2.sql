/*Jose Maria Villalba*/

/*Ejercicio 1*/
SELECT origen, destino, aerolinea FROM vuelos JOIN itinerarios ON vuelos.id=itinerarios.id_vuelo JOIN reservas_vuelos ON itinerarios.id_reserva=reservas_vuelos.id_reserva WHERE reservas_vuelos.clase='Business';

/*Ejercicio 2*/
SELECT clase, SUM(precio) AS precio_total FROM boletos GROUP BY clase;

/*Ejercicio 3*/
SELECT id_vuelo, count(id_pasajero) AS cantidad_pasajeros FROM listado_pasajeros_vuelos GROUP BY id_vuelo;