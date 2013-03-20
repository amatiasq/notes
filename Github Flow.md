# GITHUB WORKFLOW #

1. Clonar pomo

  $ git clone <REPOSITORIO>

2. Crear una rama con un nombre semántico

  $ git checkout -b crear-pagina-principal

3. Trabajar y hacer commits semánticos importante hacer un git diff antes de commit.

  $ git status
  > # modified:   js/views/edit.js
  > #  modified:   js/views/page.js
  > #	modified:   js/views/task_item.js
  > #	modified:   js/views/task_list.js
  $ git diff js/views/task_item.js js/views/task_list.js
  ...
  $ git add js/views/task_item.js js/views/task_list.js
  $ git commit -m "Completada tarea 345. Crear lista de tareas"

4. Hacer push frecuentes a tu rama (por ejemplo tras cada commit)

  $ git push origin crear-pagina-principal

5. Si pasamos tiempo en nuestra rama y queremos actualizarla actualizamos master y hacemos un merge. También hay que hacerlo antes de un pull request.

  $ git checkout master
  $ git pull
  $ git checkout crear-pagina-principal
  $ git merge master

6. Una vez tenemos listo lo que la rama explica vamos a la página de nuestro repositorio (http://github.com/<PROPIETARIO>/<REPOSITORIO>/) y le damos a "Pull Request". Como origen seleccionamos nuestra rama y como destino master.

7. Si hace falta comentamos el pull request donde consideremos necesario.

8. Esperamos a que otro miembro de el visto bueno del pull request. Dar el visto bueno es comentar :shipit: y/o dando al botón "Approve" en bitbucket.

9. Si comentando encontramos un problema volvemos al código y repetimos los pasos 3, 4 y 5, una vez arreglado volvemos al pull request y le damos al botón "Edit" esto añade los nuevos commits al pull request.

10. Una vez aceptado el pull request lo cerramos haciendo click en el botón "Merge". Cuando el proceso termine vamos al terminal, actualizamos master y borramos nuestra rama.

  $ git checkout master
  $ git pull
  $ git branch -d crear-pagina-principal

11. Marcamos la tarea como completa en el gestor de tarea que usemos, cogemos otra y volvemos al paso 2.
