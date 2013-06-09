Autocompletado en MAC
---------------------

[fuente](http://railslove.com/blog/2011/11/25/git-autocomplete-in-bash-on-a-mac/)

Git for mac no tiene autocompletado de ramas por defecto, para añadirlo debemos ejecutar estas líneas:

    curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    echo "source ~/.git-completion.bash" >> ~/.bash_profile

**NOTA**: Después de descargar el archivo es importante cambiar los line-endings al estilo UNIX de lo contrario no funcionará.
En `VI` ésto se hace abriendo el archivo y ejecutando el comando

    :set ff=unix

**NOTA 2**: Es posible que el sistema no lea el archivo `.bash_profile` en cuyo caso deberemos ejecutar

    echo "source ~/.git-completion.bash" >> ~/.bashrc

Mostrar la rama en el prompt
----------------------------

[fuente](http://code-worrier.com/blog/git-branch-in-bash-prompt/)

Para mostrar la rama actual en el prompt de la linea de comandos necesitamos el archivo `git-prompt.sh` añadido a nuestro `.bash_profile`

    curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
    echo "source ~/.git-prompt.sh" >> ~/.bash_profile

Ahora podemos usar `\$(__git_ps1)` en la definición del prompt

    PS1='\u:\w$(__git_ps1)$ '

Incluso con colores

    PS1='\e[0;36m\u\e[0;37m:\e[0;33m\w\e[0;32m$(__git_ps1)\e[0;37m$ '

Añadir la asignación de `PS1` al `.bash_profile` así se ejecutará al entrar al terminal

    echo "PS1='\e[0;36m\u\e[0;37m:\e[0;33m\w\e[0;32m$(__git_ps1)\e[0;37m$ '" >> ~/.bash_profile
    
**NOTA**: Si no se usan comillas simples `$(__git_ps1)` será ejecutado cuando asignemos `PS1` con lo que el prompt no cambiará

**NOTA 2**: Si no funciona intenta añadir las configuraciones a `.bashrc` en lugar de `.bash_profile`

    echo "source ~/.git-prompt.sh" >> ~/.bashrc
    echo "PS1='\e[0;36m\u\e[0;37m:\e[0;33m\w\e[0;32m$(__git_ps1)\e[0;37m$ '" >> ~/.bashrc

