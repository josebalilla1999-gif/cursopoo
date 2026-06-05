/*Jose Maria Villalba*/

/*Ejercicio 1*/
SELECT i.id_reserva, i.trayecto, v.aerolinea FROM itinerarios i JOIN vuelos v ON i.id_vuelo=v.id;

/*Ejercicio 2*/
SELECT nombre, asiento, sala_embarque FROM tarjeta_de_embarque JOIN pasajeros ON tarjeta_de_embarque.id_pasajero=pasajeros.id_pasajero;

/*Ejercicio 3*/
SELECT CONCAT(p.nombre, ' ', p.apellido) AS nombre_completo FROM pasajeros p JOIN boletos b ON p.id_pasajero=b.id_pasajero JOIN reservas_vuelos r ON b.id_reserva=r.id_reserva WHERE r.nro_ninos > 0;

/*Ejercicio 4*/
SELECT origen, destino, hora_salida FROM vuelos JOIN listado_pasajeros_vuelos ON vuelos.id=listado_pasajeros_vuelos.id_vuelo WHERE listado_pasajeros_vuelos.id_pasajero=1;