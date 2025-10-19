# DBMidtermPractice: creacion basica y despliegue

#1 ->Ventana 1:
Insertar comando: docker run -it -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14
# 
#2 ->Ventana 2:
Insertar comando: docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" dpage/pgadmin4
#
#3 -> Ingresar a http//:localhost:5050
#
#4 -> Ingresar con user y contraseña de #1, despues en servers -> register -> server.
#
  ->Aqui colocaremos nuestros nombre deseado en la primer pestaña
#
  ->Vamos a la segunda pestaña, donde en adress pondremos Direccion IPv4, y en name y password lo del paso #2.
#
#5 -> Listo, el server esta subido, Ahora con Querytools podremos insertar distintos comandos para manipular nuestra base de datos a nuestro antojo.
