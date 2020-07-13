/* Usuarios base */
insert into users values (NULL ,"Male", "Alimona", "santi@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "male.jpg", "admin"),(NULL ,"Marcos", "Grizzuti", "marcos@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "marcos.jpg", "admin"),(NULL ,"Juanma", "Cesano", "juanma@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "juanma.jpg", "admin"),(NULL ,"Santi", "Frers", "santi@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "santi.jpg", "admin"),(NULL ,"Mauri", "Gato", "gato@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "macri.jpg", "user"),(NULL ,"Nestor", "Pinguin", "peronia@gmail.com", "$2b$10$5y.AwciMO.WSbIrOWcjC9.wdA02.zJJXI/R58meUJjnLz.R7hmpuO", "nestor.jpg", "user");

/* Tipos de tours */
insert into tourS_type VALUES (NULL, "tours"), (NULL, "espectaculos"), (NULL, "talleres"), (NULL, "deporte"), (NULL, "arte"),(NULL, "belleza");

/* Tours lanzamientos */
insert into tours values (NULL, "Bike Tour",100,1, "buscados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-4.jpg", "img-fichaProd-1.jpg"),(NULL, "Sagrada Familia",500,1, "buscados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-5.jpg", "img-fichaProd-1.jpg"),(NULL, "Museo de la Ostia",300,1, "buscados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-6.jpg", "img-fichaProd-1.jpg"),(NULL, "Parques historicos",20,1, "recomendados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-1.jpg", "img-fichaProd-1.jpg"),(NULL, "Bike Tour",100,2, "recomendados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-2.jpg", "img-fichaProd-1.jpg"),(NULL, "Sagrada Familia",500,2, "recomendados", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "product-3.jpg", "img-fichaProd-1.jpg"),(NULL, "Museo de la Ostia",300,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act1.jpg", "img-fichaProd-1.jpg"),(NULL, "Barco Pirata",20,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act4.jpg", "img-fichaProd-1.jpg"),(NULL, "Acuario",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act5.jpg", "img-fichaProd-1.jpg"),(NULL, "Gaudi",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act6.jpg", "img-fichaProd-1.jpg"),(NULL, "Taller de escultura",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act7.jpg", "img-fichaProd-1.jpg"),(NULL, "Vitrales",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "arte4.jpg", "img-fichaProd-1.jpg"),(NULL, "Teleférico Montjuic",20,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act2.jpg", "img-fichaProd-1.jpg"),(NULL, "Acuario",20,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act3.jpg", "img-fichaProd-1.jpg"),(NULL, "Tirolesa",20,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act1.jpg", "img-fichaProd-1.jpg"),(NULL, "Escalá en Montjuic",20,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act8.jpg", "img-fichaProd-1.jpg"),(NULL, "Palacio Guell",20,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "belleza3.jpg", "img-fichaProd-1.jpg"),(NULL, "Parc Guell",20,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act1.jpg", "img-fichaProd-1.jpg"),(NULL, "MALBA",20,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "belleza.jpg", "img-fichaProd-1.jpg"),(NULL, "Acuario",20,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act3.jpg", "img-fichaProd-1.jpg"),(NULL, "Termas",20,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act7.jpg", "img-fichaProd-1.jpg"),(NULL, "Parques historicos",20,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte1.jpg", "img-fichaProd-1.jpg"),(NULL, "Noche de masajes",20,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte4.jpg", "img-fichaProd-1.jpg"),(NULL, "Spa",20,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "talleres1.jpg", "img-fichaProd-1.jpg"),(NULL, "Spa day",20,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "belleza.jpg", "img-fichaProd-1.jpg"),(NULL, "Retiro espiritual",40,6, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "belleza3.jpg", "img-fichaProd-1.jpg"),(NULL, "Museo Gótico",18,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "arte2.jpg", "img-fichaProd-1.jpg"),(NULL, "Parques historicos",20,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "arte3.jpg", "img-fichaProd-1.jpg"),(NULL, "Catamarán por la costa",30,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte1.jpg", "img-fichaProd-1.jpg"),(NULL, "Catamaran Menorca",50,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte2.jpg", "img-fichaProd-1.jpg"),(NULL, "Andorra",80,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte3.jpg", "img-fichaProd-1.jpg"),(NULL, "Montserrat",20,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte4.jpg", "img-fichaProd-1.jpg"),(NULL, "Velero",40,4, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "deporte5.jpg", "img-fichaProd-1.jpg"),(NULL, "Show Flamenco",10,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "espectaculo1.jpg", "img-fichaProd-1.jpg"),(NULL, "Show Catalán",20,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "espectaculos2.jpg", "img-fichaProd-1.jpg"),(NULL, "Taller de Paella",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "talleres1.jpg", "img-fichaProd-1.jpg"),(NULL, "Bartender una noche",20,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "talleres2.jpg", "img-fichaProd-1.jpg"),(NULL, "MACBA",10,5, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "arte4.jpg", "img-fichaProd-1.jpg"),(NULL, "Parc Guell",25,1, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tour1.jpg", "img-fichaProd-1.jpg"),(NULL, "Arco de Triunfo",10,1, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tour4.jpg", "img-fichaProd-1.jpg"),(NULL, "Tibidabo",10,1, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act10.jpg", "img-fichaProd-1.jpg"),(NULL, "Parc Guell",10,1, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tour1.jpg", "img-fichaProd-1.jpg"),(NULL, "Arco de Triunfo",12,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tour4.jpg", "img-fichaProd-1.jpg"),(NULL, "Casa del Alba",10,2, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "act9.jpg", "img-fichaProd-1.jpg"),(NULL, "Arco de Triunfo",10,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tours3.jpg", "img-fichaProd-1.jpg"),(NULL, "Bogatell",10,3, "none", "En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona  sino que subiremos a una de sus. ¡Todo sin esperar colas!", "Cafetera Dolce Gusto Lumio. La cafetera Dolce Gusto Lumio es de variedad automática que ha llegado con un diseño radical", "tour1.jpg", "img-fichaProd-1.jpg");

/* Carrito de prueba */
insert into carrito values (NULL, 2, 2)