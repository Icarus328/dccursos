# grupo-87


La url de la página web es https://dccursos.herokuapp.com/

## Rubocop

La configuración del rubocop está diseñada para parecerse lo más posible a pep-8 de python, con el que estamos más familiarizados, los cambios más notables son que pusimos el máximo de caracteres de una línea en 100 e hicimos la indentación necesaria. También, está la regla de que los nombres deben ser en CamelCase.

## Cosas a editar en el readme

* Versión de ruby

* Dependencias del sistema (gemas?)

* Configuración

* Creación de la base de datos

* Como hacer los testeos

* Servicios

* Instrucciones de lanzado

* Etc

## Modelos

* Clase
    * duracion : integer
    * curso_asociado : string
    * tematica : string
    * fecha : DateTime
    * numero : integer
    * nombre : string
    * video_asociado : integer

## Controladores

* Clases
    * new
    * create
    * index
    * show
    * edit
    * update
    * destroy

## Notas

* En el codigo todavía se puede ver un crud "Clase", este codigo está inutilizado pero no afecta el correcto funcionamiento del programa.

* Las credenciales de admin son email: admin@rubyonrails.com, password: password.

* Para obtener el link de una imagen a usar en la app, se debe buscar el link de la imagen, conseguido al hacer click derecho.

* Para obtener el link de un video para usar en la app, se debe usar el "embed link" que se obtiene de youtube al pulsar "compartir".

* Para ver el video de una clase se debe hacer click en show details.