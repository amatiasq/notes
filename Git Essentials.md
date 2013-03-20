# [GIT ESSENTIALS][10] #

---

### Configuración ###

Configurar al actual usuario en git de forma global (para todos los repositorios) por línea de comandos :

    $ git config [--global] user.name "John Doe"
    $ git config [--global] user.email john@doe.com
    $ git config [--global] alias.fix checkout -b fix
    $ git config [--global] color.diff auto
    $ git config [--global] core.editor vim

Para más detalles de configuración editar el archivo *.git/config*


---

### Git Essentials ###

Crear e iniciar un repositorio

    $ git init
    $ git init --bare {projectname} // bare permite compartir el repositorio con otros usuarios

Comprobar en qué estados se encuentran los archivos

    $ git status

Añadir o preparar un archivo para su confirmación

    $ git add {filename}
    $ git add . // todos los archivos pendientes

Confirmar un archivo (guardarlo en el repositorio)

    $ git commit // saltará el editor de texto para introducir el mensaje de confirmación
    $ git commit -m '{message}'

Información sobre los commits realizados (histórico)

    $ git log

Eliminación de un archivo (añadir al estado de modificación como eliminado)

    $ git rm {filename}

Cambiar el nombre a un commit ya realizado

    $ git commit --amend // saltará el editor de texto para cambiar el mensaje
    $ git commit --amend -m [commit_message] // introducimos directamente el mensaje

Deshacer el estado del archivo de preparación a modificación.

    $ git reset head {filename}

Eliminar el último commit definitivamente y recuperar el estado (confirmado) del hash anterior

    $ git reset HEAD^1

Con el archivo **.gitignore** podremos filtrar los contenidos a guardar y controlar en el repositorio

    $ vim .gitignore

**Ejemplo**

    $ vim .gitignore

    tmp/  //no se guardarán los elementos de esta carpeta temporal
    bin/
    *.log  //no se guardarán los archivos con extensión log


----

### Branch ###

Las ramas nos permiten hacer un snapshot del repositorio para poder trabajar sin tocar el desarrollo principal. Por defecto, consideramos la rama **master** la principal de nuestro proyecto.

    $ git branch [-d|-D] {branchname}

Crear una rama

    $ git branch {branchname}

Eliminar una rama de forma segura

    $ git branch -d {branchname}

Eliminar una rama definitivamente (fuerza el borrado)

    $ git branch -D {branchname}

**Ejemplo**

    $ git branch -D develop // eliminará la rama develop
    $ git branch temporal // crea la rama temporal

**Ejemplo**

    $ git branch develop // desarrollo
    $ git branch fix // solución de errores del desarrollo
    $ git branch feature // nuevas funcionalidades

    // master suele ser la rama por defecto y versión estable del proyecto


---

### Checkout ###

Esta opción nos permite **cambiar de rama o restaurar nuestro directorio de trabajo o archivo** devolviéndonos al estado que queramos (de entre los commits realizados).

Crear una rama y cambiar automáticamente a ella

    $ git checkout -b {branchname}

Cambiar a una rama

    $ git checkout {branchname}

Restaurar el directorio de trabajo o fichero

    $ git checkout -f {filename}

Crear una rama temporal

    $ git checkout {hash}

**Ejemplo**

    $ git checkout -b develop // crea la rama develop y nos sitúa en ella

**Ejemplo**

    $ git checkout -b ca80cc9

    *   bcfb7b1 - (master) MERGE message description
    |\
    | * 9a8c983 - (develop) CHANGE message text
    * | ca80cc9 - (HEAD, temp) CHANGE just change the message
    |/
    * caff1d7 - ADD main.c for our first commit

---

### Diff ###

Muestra las diferencias entre el archivo actual y los del repositorio :

    $ git diff [hash]

**Ejemplo**

    $ git diff // diferencia con el último hash del repositorio
    $ git diff ac7bf90


---

### Merge ###

Esta operación reconcilia, uno o mezcla diferentes ramas creando una revisión controlada y nueva rama con los cambios aportados.

    $ git merge {branchname}

**Ejemplo**

    $ git merge develop


---

### Reset ###

Elimina los commits, borrando toda la información que teníamos guardada en los mismos, y dejando el repositorio en el estado (hash) indicado.

    $ git reset HEAD^{n} {--soft|--hard}

**Ejemplo**

    $ git reset HEAD^1 // n = 1 : eliminará el último commit


---

### Revertir cambios ### !?

Los cambios hechos en commits anteriores se pueden revertir y crear un nuevo commit con el estado de aquel commit.

    $ git revert {hash}

**Ejemplo**

    $ git revert 196e3f4 // reutilizará los cambios que existían en este commit !?


---

### Clone ###

Nos permite clonar un repositorio local o remoto para poder empezar a trabajar. Tenemos diferentes sistemas, dependiendo del protocolo.

    $ git clone [protocolo+url]

**Ejemplo**

ssh

    git@github.com:ainformatico/jecookie.git

git

    git clone git://github.com/ainformatico/jecookie.git

http[s]

    git clone https://github.com/ainformatico/jecookie.git


---

### Stash ###

Guarda en pila los cambios que se han realizado desde el último commit. La pila de stash funciona de abajo hacia arriba, por lo que se verán los cambios al revés.

    $ git stash [option]

Salvar un estado del repositorio como un elemento de la pila

    $ git stash save {checkpointname}

**Ejemplo**

    $ git stash save add main declaration

    Saved working directory and index state On develop: add main declaration
    HEAD is now at 1a3024d ADD main.c four our first commit

    * Tenemos los cambios iniciales más los urgentes más los guardados en la pila
    |
    * Aplicamos los cambios del stash
    |\
    | |
    | |
    * | Realizamos los cambios urgentes
    | * Guardamos los cambios en el stash
    |/
    * Cambios actuales

Listar los elementos de la pila

    $ git stash list

**Ejemplo**

    $ git stash list

    stash@{0}: On develop: add main declaration
    stash@{1}: On fix: fixing bug #16338
    stash@{2}: On test: hold for sockets test

Mostrar el contenido de un nivel de la pila indicado

    $ git stash show [-p] stash@{n}

Extraer un elemento de la pila

    $ git stash apply [stash@{n}]

Extraer un elemento concreto de la pila y eliminar el mismo de ella

    $ git stash pop [stash@{n}]

Eliminar un elemento concreto de la pila

    $ git stash drop stash@{n}

Limpiar la pila

    $ git stash clear

*nota : STASH funciona con cambios modificados, es decir, genera una pila de cambios sobre modificaciones SIN CONFIRMAR con la intención de poder acceder a ellos antes de generar la versión confirmada*


---

### Tag ###

Los tags o etiquetas nos permiten marcar e identificar un punto en concreto de todo el histórico de nuestro repositorio para por ejemplo, identificar versiones.

    $ git tag {tag} [hash]

**Ejemplo**

    $ git tag v0.1 b547e84

Añadir comentarios a las etiquetas

    $ git tag -a [etiqueta] -m [comentario] [hash]

**Ejemplo**

    $ git tag -a v0.1 -m "The first stable version" b547e84

Listar los commits que hayamos marcado con etiquetas (y sus comentarios)

    $ git show v0.1
      
    tag v0.1
    Tagger: John Doe <john@doe.com>
    Date:   Sat Oct 15 18:00:00 2011 +0200
      
    The first stable version
      
    commit b547e84694eadd45967c3504c12bb19bd19ce783
    Author: John Doe <john@doe.com>
    Date:   Sat Oct 15 18:00:00 2011 +0200
      
        ADD basic main declaration to main file
      
    diff --git a/main.c b/main.c
    index e69de29..9d9f7be 100644
    --- a/main.c
    +++ b/main.c
    @@ -0,0 +1,7 @@
    +#include <stdio.h>
    +
    +int main(void)
    +{
    +  printf("\nHello World.\n");
    +  return 0;
    +}

Listar sólo las versiones

    $ git tag [-l {pattern}]

**Ejemplo**

    $ git tag -l v0.*

    v0.1
    v0.2


---

### Bundle ###

Genera un archivo comprimido del repositorio o parte del mismo :

Creación

    $ git bundle create {projectname} [--all|{tag}|{git_date_format}]
    $ git bundle create {projectname.branch.hash} [option] {branch}

Clonación

    $ git pull|clone {name} [{branch}]

Sólo incluir los cambios desde hace x días

    $ git bundle create {projectname} --since=x.days {branch}

Sólo incluir los n últimos commits

    $ git bundle create {projectname} -n {branch}

**Ejemplo**

    $ git bundle create uz_project.master.full --all
    $ git bundle create uz_university.develop.e4b90eb --since=10.days develop
    $ git bundle create uz_new_menu.feature.44b3463 -5 feature
    $ git bundle create uzu.develop.48de33d 48de33d..develop


---


### Patch ###

Un patch es un fichero que contiene los cambios de uno o más commits para aplicarlos a un respositorio.

    $ git format-patch [{tag}|{hash}] [--stdout > file]
    $ git apply --stat {name}

**Ejemplo**

    // falta ejemplo !


---

### Blame ###

Nos permite ver por cada línea de código quién ha sido el autor o el último en modificar ésta.

    $ git blame {filename}

**Ejemplo**

    $ git blame main.c

    ^caff1d7 (Alejandro El Informático 2012-09-27 00:00:00 +0200 1) #include <stdio.h>
    ^caff1d7 (Alejandro El Informático 2012-09-27 00:00:00 +0200 2)
    ^caff1d7 (John Doe                 2012-09-26 00:00:00 +0200 3) int main(void)
    ^caff1d7 (John Doe                 2012-09-26 00:00:00 +0200 4) {
    bcfb7b1c (John Doe                 2012-09-25 00:00:00 +0200 5)   printf("\n'Hello World' is just an exam...
    ^caff1d7 (John Doe                 2012-09-25 00:00:00 +0200 6)   return 0;
    ^caff1d7 (Alejandro El Informático 2012-09-27 00:00:00 +0200 7) }


---

### Submodule ###

Nos permite tener un repositorio git dentro de otro repositorio, por ejemplo, un proyecto principal sobre el que se desarrollan plugins.

Creación

    $ git submodule add [path]

Inicialización

    $ git submodule init
    $ git submodule update

**Ejemplo**

    $ git submodule add ssh://server/path/to/repo {destination}
    Initialized empty Git repository in /path/to/repo/{destination}
    [...]
      
    $ git st
    # On branch develop
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #   new file:   .gitmodules
    #   new file:   {destination}
    #

*Nota : los submódulos no se actualizan automáticamente, y cada cambio que se haga en el submódulo se debe hacer el commit correspondiente en el repositorio principal.*


---

### Rebase ###

Modifica el historial para combinar diferentes commits o reordenarlos. No debemos usar rebase en commits que ya hayan sido publicados.

**Ejemplo**

    momento t1
      C --- D   foo/bar
           / 
    A --- B   master

    momento t2 tras rebase  
    A --- B --- C --- D   master


---

### Cherry-pick ###

Nos permite mover commits a lo largo del historial o entre diferentes ramas. Es bastante usual mover algún commit de una rama a otra para continuar con el desarrrollo.

**Ejemplo**

    momento t1
      C --- D   foo/bar  // copiamos c
           / 
    A --- B   master
    momento t2 tras cherry-pick
      
      C --- D   foo/bar
           / 
    A --- B --- C'  master  // lo pasamos a la rama master


---

### Hooks ###

Los hooks son scripts que se ejecutan cuando hay un determinado evento. Estos scripts se encuentran en el directorio .git/hooks de nuestro repositorio. Podemos agruparlos en hooks >

**Del lado cliente** : No se pueden modificar ni se transfieren en un clon, push o pull. !? Están predefinidos, podemos escribir los nuestros, uso ?

- *pre-commit* : se ejecuta antes de escribir el mensaje de commit. Líneas finales, lint, etc
- *prepare-commit-msg* : se ejecuta antes del editor del mensaje y después del mensaje por defecto del commit. Podemos editar este mensaje.
- *commig-msg* : se ejecuta antes de guardar el mensaje. Nos permite verificar directrices de los mensajes
- *post-commit* : se ejecuta una vez acabado todo el proceso de commit. Normalmente para notificaciones.
- *applypatch-msg* : verificar las directrices de los mensajes
- *pre-applypatch* : se ejecuta antes de aplicar un patch
- *post-applypatch* : se ejecuta después de aplicar un patch
- *pre-rebase* : se ejecuta antes de hacer rebase 
- *post-checkout* : se ejecuta después de hacer checkout y se usa para inicializar el directorio de trabajo, compilar, documentación, etc
- *post-merge* : se ejecuta después de aplicar un merge correctamente y se usa para cambiar permisos, copiar ficheros, etc

*nota : evitar rebase en commits que han estado subidos*

**Del lado cliente** : Se ejecutan en el servidor antes y después de hacer push

- *pre-receive* : se ejecuta antes de hacer push, normalmente para controlar permisos
- *post-receive* : se ejecuta una vez acabado el proceso de push, para notificaciones, parsear el mensaje de commit y cerrar tickets
- *update* : igual que pre-receive pero controla las ramas por separado (permisos, etc )


---

### Trabajar en remoto ###

En remoto hacemos push a un repositorio de tipo bare cuando ya tenemos una posible versión final de nuestros cambios.

En local se trabaja en ramas y una vez acabado el trabajo hacemos merge con nuestra rama master con tal de hacer push desde ésta hacia una rama de test o implementación que será revisada y después combinada con la rama master remota. Tenemos diferentes formas de enviar nuestros cambios :

**http[s]**

    $ git [pull|push] http[s]://servidor/path/to/repo] [{rama}]

Pensado para respositorios de solo lectura, y en determinados casos de respositorios de escritura :

*Ventajas*

Acceso anónimo,
Facilidad para configurar el repositorio de lectura
Protocolo muy común, probabilidad alta de que funcione bajo cortafuegos corporativos.

*Inconvenientes*

Muy ineficiente, genera mucho tráfico
No hay control de credenciales

**GIT**

    $ git [pull|push] git://{servidor}/path/to/repo.git [{branch}]

Pensado para tener repositorios read-only, ya que no hay control de usuarios y permisos.

*Ventajas*

- Muy rápido
- No se necesitan credenciales para leer

*Inconvenientes*

- Se necesita configurar un daemon git (que es difícil)
- No hay control de acceso
- Puerto no estándar, 9418

**SSH**

    git [pull|push] ssh://{[usuario@]servidor/path/to/repo} <div></div>

*Ventajas*

- Cifrado
- Lee los parámetros de conexión desde ~(.ssh/config)
- Únicamente necesita la configuración del ssh
- Control específico de cada usuario mediante hooks

*Inconvenientes*

- No hay acceso anónimo/público
- Sin configuración de acceso por repositorio, cualquier usuario puede hacer cambios en cualquier repositorio
- El usuario ha de tener una cuenta ssh en el servidor
- Vulnerabilidades del servicio
- Violaciones de políticas de privacidad


---

### Git remote ###

Podemos guardar alias para los servidores que usamos, con el fin de facilitar nuestra gestión

Al escribir :

    $ git remote add {name} ssh://server/path/to/repo

Podremos hacer :

    $ git push {name} {branch}

Al clonar git automáticamente crea remote origin, que es aquel destino desde el que nos hemos clonado el repositorio. !? no entiendo el alias ?


---

### Github > [https://github.com/][8] ###

Es un hosting de repositorios git gratuito y open source en su mayoría. Tiene las características de :

- Está muy extendido en la red
- Gran comunidad de desarrolladores detrás
- Se puede colaborar fácilmente con otros proyectos, Fork y Pull request
- Wiki, Issue tracking system
- Colaboradores, organizaciones
- Se integra con muchos gestores de tareas

[8]: https://github.com/


---

### Más información ###

- Gitosis, [https://github.com/res0nat0r/gitosis][1]
- Gitolite, [https://github.com/sitaramc/gitolite][2]
- Gitweb, [http://git.kernel.org][3]
- Convertir hg a git, [http://bit.ly/33872n][4]
- Convertir svn a git, [http://bit.ly/qa7c0B][5]
- Sistema de tickets distribuidos, [https://github.com/jeffWelling/ticgit][6]
- Más información, [http://bit.ly/2V6CFi][7]

[1]: https://github.com/res0nat0r/gitosis
[2]: https://github.com/sitaramc/gitolite
[3]: http://git.kernel.org
[4]: http://bit.ly/33872n
[5]: http://bit.ly/qa7c0B
[6]: https://github.com/jeffWelling/ticgit
[7]: http://bit.ly/2V6CFi

[10]: http://git-scm.com/
