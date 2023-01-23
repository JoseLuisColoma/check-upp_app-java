USE `escala_braden`;

INSERT INTO `escala_braden`.`items`(`numero`,`nombre`,`imagen`)
VALUES 
(1,"Percepción sensorial", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\percepcion_sensorial.png')),
(2,"Exposición a la humedad", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\humedad.png')),
(3,"Actividad", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\actividad.png')),
(4,"Movilidad", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\movilidad.png')),
(5,"Nutrición", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\nutricion.png')),
(6,"Fricción y cizallamiento", LOAD_FILE('C:\Users\JLCT\Documents\misProyectos\check-upp\img\friccion.png'));

INSERT INTO `escala_braden`.`situaciones`(`id`,`nombre`,`descripcion`,`puntos`,`item`)
VALUES 
(NULL, "Completamente limitada","< Nivel de conciencia.\n Sedación.\n No reacciona ante el dolor.\n < Capacidad sensitiva.",1,1),
(NULL, "Muy limitada","Reacción solo ante estímulo doloroso.\n No comunica malestar.\n Déficit sensorial.",2,1),
(NULL, "Ligeramente limitada","Reacciona ante órdenes verbales.\n No siempre comunica malestar.\n Alguna dificultad sensorial.\n",3,1),
(NULL, "Sin limitaciones","Responde a órdenes verbales.\n Sin déficit sensorial.",4,1),
(NULL, "Constantemente húmeda","Cuando se detecta humedad cada vez que se mueve o gira al paciente.",1,2),
(NULL, "A menudo húmeda","Cuando la ropa de cama se ha de cambiar al menos una vez cada turno.",2,2),
(NULL, "Ocasionalmente húmeda","Cuando hay que cambiar la ropa de cama una vez al día.",3,2),
(NULL, "Raramente húmeda","Cuando la ropa de cama se cambia según la rutina.",4,2),
(NULL, "Encamado/a",NULL,1,3),
(NULL, "En silla",NULL,2,3),
(NULL, "Deambula ocasionalmente",NULL,3,3),
(NULL, "Deambula frecuentemente","Dos veces al día y dentro de la habitación al menos dos horas.",4,3),
(NULL, "Completamente inmóvil",NULL,1,4),
(NULL, "Muy limitada",NULL,2,4),
(NULL, "Ligeramente limitada",NULL,3,4),
(NULL, "Sin limitaciones",NULL,4,4),
(NULL, "Muy pobre","O ayunas, dieta líquida o suero > 5 días.",1,5),
(NULL, "Probablemente inadecuada","O recibe menos que la cantidad óptima de una dieta líquida o por SNG.",2,5),
(NULL, "Adecuada","O recibe nutrición por SNG o por vía parental.",3,5),
(NULL, "Excelente","Come entre horas y no requiere suplementos.",4,5),
(NULL, "Problema","Requiere de moderada o máxima asistencia para ser movido.",1,6),
(NULL, "Problema potencial","Se mueve muy débilmente o requiere de mínima asistencia.",2,6),
(NULL, "No existe problema aparente","Se mueve en la cama y en la silla con independencia.",3,6),
(NULL, "No existe problema aparente","Se mueve en la cama y en la silla con independencia.",4,6);

INSERT INTO `escala_braden`.`riesgos`(`id`,`nombre`) VALUES
(NULL, "Bajo"),
(NULL, "Moderado"),
(NULL, "Alto");





