# Sinatra-Sequel-PP

### Descipción

Servicio web desarrollado en Ruby usando el framework Sinatra para interactuar con una base de datos SSDB.

### Tecnologías

+ Ruby (2+)
+ SSDB

### Instalación - Despliegue

+ Seguir los pasos de intalación de http://ssdb.io/docs/install.html
+ git clone [repositorio.git]
+ bundler install

### Acceder a la base de datos desde un cliente de línea de comandos

	$ irb
	irb(main) : > require "ssdb"
	irb(main) : > ssdb = SSDB.new url: "ssdb://1.2.3.4:8888"
	irb(main) : > ssdb.get("mykey")

### Rutas

+ get '/generar'
+ get '/get_token'
+ get '/borrar'

### Rutas - Descripción

--- 

#### Fuentes

Base de datos SSDB

+ http://ssdb.io/
+ https://github.com/bsm/ssdb-rb
	
Framewor Sinatra :

+ http://www.sinatrarb.com/ 