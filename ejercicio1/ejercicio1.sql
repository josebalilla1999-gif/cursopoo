/*Jose Maria Villalba*/

/*Ejercicio 1*/
SELECT nombre, apellido, nro_pasaporte FROM pasajeros;

/*Ejercicio 2*/
SELECT nombre, id_reserva FROM pasajeros INNER JOIN detalles_viajeros ON pasajeros.id_pasajero=detalles_viajeros.id_pasajero;

/*Ejercicio 3*/
SELECT b.id_boleto, b.clase, b.precio, CONCAT(p.nombre, ' ', p.apellido) AS nombre_completo FROM boletos b, pasajeros p WHERE b.id_pasajero = p.id_pasajero;