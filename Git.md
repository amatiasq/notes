Autocompletado en MAC
---------------------

[source](http://railslove.com/blog/2011/11/25/git-autocomplete-in-bash-on-a-mac/)

Git for mac no tiene autocompletado de ramas por defecto, para añadirlo debemos ejecutar estas líneas:

    curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    echo "source ~/.git-completion.bash" >> ~/.bash_profile

**NOTA**: Después de descargar el archivo es importante cambiar los line-endings al estilo UNIX de lo contrario no funcionará.
En `VI` ésto se hace abriendo el archivo y ejecutando el comando

    :set ff=unix

**NOTA 2**: Es posible que el sistema no lea el archivo `.bash_profile` en cuyo caso deberemos ejecutar

    echo "source ~/.git-completion.bash" >> ~/.bashrc
