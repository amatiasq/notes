      ******************************************************************
      * Author:TROLOLOLOOLO
      * Date:16-11-2020
      * Purpose:
      * Tectonics: FOOOOO
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULO-MUCHOS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 IDIOMA PIC A(2) VALUE " ".
       77 NOMBRE PIC X(20) VALUE " ".
       77 OPCION PIC 9 VALUE 0.
       77 NUM1 PIC S9(9) VALUE 1.
       77 NUM2 PIC S9(9) VALUE 1.
       77 CONT PIC 9(9) VALUE 1.
       77 ALMACENADOR PIC S9(9) VALUE 0.
       77 RESTO PIC 9(9) VALUE 0.
       77 RESULTADO PIC 9(9) VALUE 0.
       77 REVISION PIC 9(9) VALUE 0.
       01 VECTOR.
           02 FILA.
               03 COLUMNAS PIC 9(9) OCCURS 3000 TIMES VALUE 0.
       77 INDICE PIC 9(9) VALUE 1.›
       77 FORMATO PIC -ZZZ,ZZZ,ZZ9.999 BLANK WHEN ZERO.


       PROCEDURE DIVISION.

       000001-CARATULA SECTION.

           DISPLAY "Buenos dias ingresa 'ES' para castellano"
           DISPLAY "Good morning input 'EN' to continue in english"
           DISPLAY "Waka waka waka 'WK' wwaka waka"
           ACCEPT IDIOMA.
           PERFORM PRESENTACION.

       PRESENTACION.
           IF IDIOMA = "ES" OR "es" THEN
                DISPLAY " "
                DISPLAY "Por favor ingresa tu nombre"
           ELSE IF IDIOMA = "EN" OR "en" THEN
                DISPLAY " "
                DISPLAY "Please enter your name"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
                DISPLAY " "
                DISPLAY "Waka waka waka waka"
           ELSE
                PERFORM PRESENTACION
           END-IF.
           ACCEPT NOMBRE.
           PERFORM MENU.

       MENU.
           IF IDIOMA = "ES" OR "es" THEN
                DISPLAY "Hola " NOMBRE " bienvenido"
                DISPLAY " "
                DISPLAY "****************** MENU **********************"
                DISPLAY "*     1) MENU MATEMATICO                     *"
                DISPLAY "*     2) MENU ESTADISTICO                    *"
                DISPLAY "*     3) MENU GEOMETRICO                     *"
                DISPLAY "*     4) MENU ADMINISTRACION DE NEGOCIO      *"
                DISPLAY "*     5) SALIR                               *"
                DISPLAY "**********************************************"
                DISPLAY " "
                DISPLAY "Por favor elige una opcion del menu"
                DISPLAY " "

           ELSE IF IDIOMA = "EN" OR "en" THEN
                DISPLAY "Hello " NOMBRE " Welcome"
                DISPLAY " "
                DISPLAY "****************** MENU **********************"
                DISPLAY "*     1) MATH MENU                           *"
                DISPLAY "*     2) STATISTIC MENU                      *"
                DISPLAY "*     3) GEOMETRIC MENU                      *"
                DISPLAY "*     4) ADMINISTRATION MENU                 *"
                DISPLAY "*     5) EXIT                                *"
                DISPLAY "**********************************************"
                DISPLAY " "
                DISPLAY "Please choose an option from the menu"
                DISPLAY " "

           ELSE IF IDIOMA = "WK" OR "wk" THEN
                DISPLAY "Waka " NOMBRE " wakawaka"
                DISPLAY " "
                DISPLAY "****************** WAKA **********************"
                DISPLAY "*     1) WAKA WAKAWAKA                       *"
                DISPLAY "*     2) WAKA WAKAWAKA                       *"
                DISPLAY "*     3) WAKA WAKAWAKAWAKA                   *"
                DISPLAY "*     4) WAKA WAKAWAKA WAKA WAKA             *"
                DISPLAY "*     5) WAKA                                *"
                DISPLAY "**********************************************"
                DISPLAY " "
                DISPLAY "Waka waka waka waka waka"
                DISPLAY " "
           END-IF.
           ACCEPT OPCION
           IF OPCION = 1 THEN
               PERFORM MENU-MATEMATICO
           ELSE IF OPCION = 2 THEN
               PERFORM MENU-GEOMETRICO
           ELSE IF OPCION = 3 THEN
               PERFORM MENU-ESTADISTICO
           ELSE IF OPCION = 4 THEN
               PERFORM MENU-ADMIN-NEGOCIOS
           ELSE IF OPCION = 5 THEN
               PERFORM DESPEDIDA
           IF(IDIOMA = "ES" OR "es") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Opcion invalida, inserta una opcion valida"
           ELSE IF(IDIOMA = "EN" OR "en") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Invalid option insert a valid option"
           ELSE IF(IDIOMA = "WK" OR "wk") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Waka waka waka waka"
           END-IF.
           PERFORM MENU.


       MENU-MATEMATICO.
           IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "************** MENU MATEMATICO ******************"
             DISPLAY "*1)DETERMINAR PRIMOS/COMPUESTOS                 *"
             DISPLAY "*2)CALCULAR CUANTOS PRIMOS HAY ENTRE DOS NUMEROS*"
             DISPLAY "*3)CALCULAR EL PRODUCTORIO ENTRE DOS NUMEROS    *"
             DISPLAY "*4)MULTIPLICAR                                  *"
             DISPLAY "*5)VOLVER AL MENU PRINCIPAL                     *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Por favor elige una opcion del menu"

           ELSE IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "***************** MATH MENU *********************"
             DISPLAY "*1)DETERMINE PRIME NUMBERS/COMPOSITE NUMBERS    *"
             DISPLAY "*2)HOW MANY PRIMES THERE ARE BETWEEN TWO NUMBERS*"
             DISPLAY "*3)CALCULATE CAPITAL PI MULTIPLICATION          *"
             DISPLAY "*4)MULTIPLY                                     *"
             DISPLAY "*5)BACK TO MAIN MENU                            *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Please choose an option from the menu"

           ELSE IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "**************** WAKA WAKAWAKA ******************"
             DISPLAY "*1)WAKAWAKA WAKA/WAKA                           *"
             DISPLAY "*2)WAKA WAKA WAKA WAKA WAKA WAKA WAKA WAKAWAKA  *"
             DISPLAY "*3)WAKA WAKAWAKA WAKA WAKAWAKA                  *"
             DISPLAY "*4)WAKAWAKAWAKA                                 *"
             DISPLAY "*5)WAKA WA WAKA                                 *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Waka waka waka waka waka"
           END-IF.

           ACCEPT OPCION
           IF OPCION = 1 THEN
               PERFORM PRIMOS-COMPUESTOS
           ELSE IF OPCION = 2 THEN
               PERFORM PRIMOS-CANTIDAD
           ELSE IF OPCION = 3 THEN
               PERFORM PRODUCTORIO
           ELSE IF OPCION = 4 THEN
      *>          PERFORM MULTIPLICAR
           ELSE IF OPCION = 5 THEN
               PERFORM MENU
           END-IF.
           IF(IDIOMA = "ES" OR "es") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Opcion invalida, inserta una opcion valida"
           ELSE IF(IDIOMA = "EN" OR "en") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Invalid option insert a valid option"
           ELSE IF(IDIOMA = "WK" OR "wk") AND (OPCION = 0 OR OPCION > 5) THEN
               DISPLAY "Waka waka waka waka"
           END-IF.
           PERFORM ENTER
           PERFORM MENU-MATEMATICO.

       PRIMOS-COMPUESTOS.
           IF IDIOMA = "ES" OR "es" THEN
               DISPLAY "Ingresa un numero"
           ELSE IF IDIOMA = "EN" OR "en" THEN
               DISPLAY "Input a number"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               DISPLAY "Waka waka waka"
           END-IF.
           ACCEPT NUM1
           PERFORM PRIMOS UNTIL CONT > NUM1.
           MOVE NUM1 TO FORMATO
           IF IDIOMA = ("ES" OR "es") THEN
               IF ALMACENADOR = 2
                   DISPLAY "El numero " FORMATO " es primo"
               ELSE
                   DISPLAY "El numero " FORMATO " es compuesto"
               END-IF
           ELSE IF IDIOMA = "EN" OR "en" THEN
               IF ALMACENADOR = 2
                   DISPLAY "The number " FORMATO " is prime"
               ELSE
                   DISPLAY "The number " FORMATO " is compose"
               END-IF
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               IF ALMACENADOR = 2
                   DISPLAY "Waka waka " FORMATO " waka"
               ELSE
                   DISPLAY "Waka waka " FORMATO " waakaa"
               END-IF
           END-IF.
           PERFORM LIMPIAR.
           PERFORM ENTER.
           PERFORM MENU-MATEMATICO.

       PRIMOS-CANTIDAD.

           IF IDIOMA = "ES" OR "es" THEN
               DISPLAY "Ingresa un numero"
           ELSE IF IDIOMA = "EN" OR "en" THEN
               DISPLAY "Input a number"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               DISPLAY "Waka waka waka"
           END-IF.
           ACCEPT NUM1
           IF (IDIOMA = "ES" OR "es") AND NUM1 = 0 THEN
               DISPLAY "Ingresaste un valor incorrecto"
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           ELSE IF (IDIOMA = "EN" OR "en") AND NUM1 = 0 THEN
               DISPLAY " "
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           ELSE IF(IDIOMA = "WK" OR "wk") AND NUM1 = 0 THEN
               DISPLAY "Waka waka waka waka"
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           END-IF.

           IF IDIOMA = "ES" OR "es" THEN
               DISPLAY "Ingresa un numero mayor al anterior"
           ELSE IF IDIOMA = "EN" OR "en" THEN
               DISPLAY "Enter a number greater than the previous one"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               DISPLAY "Waka waka waka waka waka waka waka"
           END-IF.
           ACCEPT NUM2
           IF (IDIOMA = "ES" OR "es") AND NUM2 = 0 THEN
               DISPLAY "Ingresaste un valor que no es numerico"
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           ELSE IF (IDIOMA = "EN" OR "en") AND NUM2 = 0 THEN
               DISPLAY " "
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           ELSE IF(IDIOMA = "WK" OR "wk") AND NUM2 = 0 THEN
               DISPLAY "Waka waka waka waka"
               PERFORM ENTER
               PERFORM PRIMOS-CANTIDAD
           END-IF.

           PERFORM CICLO UNTIL NUM1 > NUM2.
           MOVE 1 TO INDICE.
           MOVE REVISION TO FORMATO.
           IF IDIOMA = "ES" OR "es"
               DISPLAY "La cantidad de primos es: " FORMATO
               DISPLAY " "
               DISPLAY "Estos son los primos encontrados:"
           ELSE IF IDIOMA = "EN" OR "en"
               DISPLAY "The number of primes is: " FORMATO
               DISPLAY " "
               DISPLAY "These are the prime numbers found:"
           ELSE IF IDIOMA = "WK" OR "wk"
               DISPLAY "Waka waka waka waka: " FORMATO
               DISPLAY " "
               DISPLAY "Waka waka waka waka waka waka:"
           END-IF.
           PERFORM IMPRIMIR UNTIL COLUMNAS(INDICE) = 0.
           PERFORM LIMPIAR
           PERFORM ENTER
           PERFORM MENU-MATEMATICO.

       PRODUCTORIO.

           IF IDIOMA = "ES" OR "es" THEN
               DISPLAY "Ingresa un numero"
           ELSE IF IDIOMA = "EN" OR "en" THEN
               DISPLAY "Input a number"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               DISPLAY "Waka waka waka"
           END-IF.
           ACCEPT NUM1
           IF (IDIOMA = "ES" OR "es") AND NUM1 = 0 THEN
               DISPLAY "Ingresaste un valor incorrecto"
               PERFORM ENTER
               PERFORM PRODUCTORIO
           ELSE IF (IDIOMA = "EN" OR "en") AND NUM1 = 0 THEN
               DISPLAY " "
               PERFORM ENTER
               PERFORM PRODUCTORIO
           ELSE IF(IDIOMA = "WK" OR "wk") AND NUM1 = 0 THEN
               DISPLAY "Waka waka waka waka"
               PERFORM ENTER
               PERFORM PRODUCTORIO
           END-IF.

           IF IDIOMA = "ES" OR "es" THEN
               DISPLAY "Ingresa un numero mayor al anterior"
           ELSE IF IDIOMA = "EN" OR "en" THEN
               DISPLAY "Enter a number greater than the previous one"
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               DISPLAY "Waka waka waka waka waka waka waka"
           END-IF.
           ACCEPT NUM2
           IF (IDIOMA = "ES" OR "es") AND NUM2 = 0 THEN
               DISPLAY "Ingresaste un valor que no es numerico"
               PERFORM ENTER
               PERFORM PRODUCTORIO
           ELSE IF (IDIOMA = "EN" OR "en") AND NUM2 = 0 THEN
               DISPLAY " "
               PERFORM ENTER
               PERFORM PRODUCTORIO
           ELSE IF(IDIOMA = "WK" OR "wk") AND NUM2 = 0 THEN
               DISPLAY "Waka waka waka waka"
               PERFORM ENTER
               PERFORM PRODUCTORIO
           END-IF.

           MOVE NUM1 TO CONT.
           PERFORM MOVER UNTIL NUM1 > NUM2.
           MOVE 1 TO INDICE.
           PERFORM MULTIPLICAR UNTIL COLUMNAS(INDICE) = 0.
           PERFORM ENTER.
           PERFORM LIMPIAR.
           PERFORM MENU-MATEMATICO.

       MOVER.
           MOVE NUM1 TO COLUMNAS(INDICE).
           ADD 1 TO INDICE.


       MULTIPLICAR.
           COMPUTE CONT = CONT + 1
           COMPUTE RESULTADO = CONT * COLUMNAS(INDICE)
           ADD 1 TO INDICE.
           DISPLAY COLUMNAS(INDICE).




       MENU-ESTADISTICO.
           IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "************** MENU ESTADISTICO *****************"
             DISPLAY "*         1)MEDIA ARITMETICA                    *"
             DISPLAY "*         2)MEDIA GEOMETRICA                    *"
             DISPLAY "*         3)DESVIACION ESTANDAR                 *"
             DISPLAY "*         4)VOLVER AL MENU PRINCIPAL            *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Por favor elige una opcion del menu"

           ELSE IF IDIOMA = "EN" OR "en" THEN
             DISPLAY " "
             DISPLAY "************** STADISTIC MENU  ******************"
             DISPLAY "*            1)ARITHMETIC MEAN                  *"
             DISPLAY "*            2)GEOMETRIC MEAN                   *"
             DISPLAY "*            3)STANDARD DEVIATION               *"
             DISPLAY "*            4)BACK TO MAIN MENU                *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Please choose an option from the menu"

           ELSE IF IDIOMA = "WK" OR "wk" THEN
             DISPLAY " "
             DISPLAY "**************** WAKA WAKAWAKA ******************"
             DISPLAY "*             1)WAKA WAKAWAKA                   *"
             DISPLAY "*             2)WAKA WAKAWAKA                   *"
             DISPLAY "*             3)WAKAWAKA WAKAWAKA               *"
             DISPLAY "*             4)WAKA WA WAKA                    *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Waka waka waka waka waka"
           END-IF.

           ACCEPT OPCION
           IF OPCION = 1 THEN
      *>          PERFORM MEDIA-ARITMETICA
           ELSE IF OPCION = 2 THEN
      *>          PERFORM MEDIA-GEOMETRICA
           ELSE IF OPCION = 3 THEN
      *>          PERFORM DESVIACION-ESTANDAR
           ELSE IF OPCION = 4 THEN
               PERFORM MENU
           ELSE IF IDIOMA = "ES" OR "es" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Opcion invalida, inserta una opcion valida"
               STOP "Presiona ENTER para continuar..."
               PERFORM MENU-ESTADISTICO
               END-IF
           ELSE IF IDIOMA = "EN" OR "en" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Invalid option insert a valid option"
               STOP "Press ENTER to continue..."
               PERFORM MENU-ESTADISTICO
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Waka waka waka waka"
               STOP "Waka ENTER waka waka waka..."
               PERFORM MENU-ESTADISTICO
           END-IF.

       MENU-GEOMETRICO.
           IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "************** MENU GEOMETRICO ******************"
             DISPLAY "*    1)PERIMETRO DE POLIGONO CON 'n' LADOS      *"
             DISPLAY "*    2)VISUALIZAR LOS DATOS INGRESADOS          *"
             DISPLAY "*    3)VOLVER AL MENU PRINCIPAL                 *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Por favor elige una opcion del menu"

           ELSE IF IDIOMA = "EN" OR "en" THEN
             DISPLAY " "
             DISPLAY "************** GEOMETRIC MENU  ******************"
             DISPLAY "*  1)POLYGON PERIMETER WITH 'n' SIDE QUANTITY   *"
             DISPLAY "*  2)VIEW THE ENTERED DATA                      *"
             DISPLAY "*  3)BACK TO MAIN MENU                          *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Please choose an option from the menu"

           ELSE IF IDIOMA = "WK" OR "wk" THEN
             DISPLAY " "
             DISPLAY "**************** WAKA WAKAWAKA ******************"
             DISPLAY "*   1)WAKA WAKAWAKA WAKA 'w' WAKA WAKAWA        *"
             DISPLAY "*   2)WAKA WAKA WAKA WAKA                       *"
             DISPLAY "*   3)WAKA WA WAKA                              *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Waka waka waka waka waka"
           END-IF.

           ACCEPT OPCION
           IF OPCION = 1 THEN
      *>          PERFORM PERIMETRO
           ELSE IF OPCION = 2 THEN
      *>          PERFORM VISUALIZAR
           ELSE IF OPCION = 3 THEN
               PERFORM MENU
           ELSE IF IDIOMA = "ES" OR "es" THEN
               IF (OPCION = 0 OR OPCION > 3) THEN
               DISPLAY "Opcion invalida, inserta una opcion valida"
               STOP "Presiona ENTER para continuar..."
               PERFORM MENU-GEOMETRICO
               END-IF
           ELSE IF IDIOMA = "EN" OR "en" THEN
               IF (OPCION = 0 OR OPCION > 3) THEN
               DISPLAY "Invalid option insert a valid option"
               STOP "Press ENTER to continue..."
               PERFORM MENU-GEOMETRICO
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               IF (OPCION = 0 OR OPCION > 3) THEN
               DISPLAY "Waka waka waka waka"
               STOP "Waka ENTER waka waka waka..."
               PERFORM MENU-GEOMETRICO
           END-IF.

       MENU-ADMIN-NEGOCIOS.
           IF IDIOMA = "ES" OR "es" THEN
             DISPLAY " "
             DISPLAY "******* MENU ADMINISTRACION DE NEGOCIOS *********"
             DISPLAY "*      1)ALMACENAR NOMBRES DE EMPLEADOS         *"
             DISPLAY "*      2)VISUALIZAR LOS DATOS INGRESADOS        *"
             DISPLAY "*      3)BORRAR LOS DATOS INGRESADOS            *"
             DISPLAY "*      4)VOLVER AL MENU PRINCIPAL               *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Por favor elige una opcion del menu"

           ELSE IF IDIOMA = "EN" OR "en" THEN
             DISPLAY " "
             DISPLAY "******** BUSINESS ADMINISTRATION MENU  **********"
             DISPLAY "*  1)POLYGON PERIMETER WITH 'n' SIDE QUANTITY   *"
             DISPLAY "*  2)VIEW THE ENTERED DATA                      *"
             DISPLAY "*  3)ERASE THE ENTERED DATA                     *"
             DISPLAY "*  4)BACK TO MAIN MENU                          *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Please choose an option from the menu"

           ELSE IF IDIOMA = "WK" OR "wk" THEN
             DISPLAY " "
             DISPLAY "************ WAKA WAKAWAKA WA WAKA **************"
             DISPLAY "*   1)WAKA WAKAWAKA WAKA 'w' WAKA WAKAWA        *"
             DISPLAY "*   2)WAKA WAKA WAKA WAKA                       *"
             DISPLAY "*   3)WAKA WAKA WAKA WAKA                       *"
             DISPLAY "*   4)WAKA WA WAKA                              *"
             DISPLAY "*************************************************"
             DISPLAY " "
             DISPLAY "Waka waka waka waka waka"
           END-IF.

           ACCEPT OPCION
           IF OPCION = 1 THEN
      *>          PERFORM EMPLEADOS
           ELSE IF OPCION = 2 THEN
      *>          PERFORM VISUALIZAR1
           ELSE IF OPCION = 3 THEN
      *>          PERFORM BORRAR
           ELSE IF OPCION = 4 THEN
               PERFORM MENU
           ELSE IF IDIOMA = "ES" OR "es" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Opcion invalida, inserta una opcion valida"
               STOP "Presiona ENTER para continuar..."
               PERFORM MENU-ADMIN-NEGOCIOS
               END-IF
           ELSE IF IDIOMA = "EN" OR "en" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Invalid option insert a valid option"
               STOP "Press ENTER to continue..."
               PERFORM MENU-ADMIN-NEGOCIOS
           ELSE IF IDIOMA = "WK" OR "wk" THEN
               IF (OPCION = 0 OR OPCION > 4) THEN
               DISPLAY "Waka waka waka waka"
               STOP "Waka ENTER waka waka waka..."
               PERFORM MENU-ADMIN-NEGOCIOS
           END-IF.

       DESPEDIDA.
           IF IDIOMA = "ES" OR "es" THEN
                DISPLAY "Gracias " NOMBRE " por elegir COBOLICS"
                DISPLAY "Que tengas buen dia y hasta pronto"
                STOP "Presiona ENTER para terminar..."
           IF IDIOMA = "EN" OR "en" THEN
                DISPLAY "Tanks " NOMBRE " for choose COBOLICS"
                DISPLAY "Have a good day and see you soon"
                STOP "Press ENTER to finish..."
           IF IDIOMA = "WK" OR "wk" THEN
                DISPLAY "Waka " NOMBRE " waka waka COBOLICS"
                DISPLAY "Waka waka waka waka"
                STOP "Waka ENTER waka waka waka..."
           END-IF.
           STOP RUN.

       ENTER.
           IF IDIOMA = "ES" OR "es" THEN
                STOP "Presiona ENTER para continuar..."
           ELSE IF IDIOMA = "EN" OR "en" THEN
                STOP "Press ENTER to continue..."
           ELSE IF IDIOMA = "WK" OR "wk" THEN
                STOP "Waka ENTER waka waka waka..."
           END-IF.

       CICLO.
           PERFORM PRIMOS UNTIL CONT > NUM1.
           IF ALMACENADOR = 2 THEN
               ADD 1 TO REVISION
               MOVE NUM1 TO COLUMNAS(INDICE)
               ADD 1 TO INDICE
           END-IF.
           ADD 1 TO NUM1.
           MOVE 1 TO CONT.
           MOVE 0 TO ALMACENADOR.


       PRIMOS.
           COMPUTE RESTO = FUNCTION REM(NUM1, CONT).
           IF RESTO = 0 THEN
               ADD 1 TO ALMACENADOR
           END-IF.
           ADD 1 TO CONT.

       IMPRIMIR.
           MOVE COLUMNAS(INDICE) TO FORMATO.
           DISPLAY FORMATO.
           ADD 1 TO INDICE.



       LIMPIAR.
           MOVE 0 TO COLUMNAS(INDICE).
           MOVE 1 TO INDICE.
           MOVE 0 TO REVISION.
           MOVE 1 TO CONT.
           MOVE 0 TO ALMACENADOR.
           MOVE 0 TO RESULTADO.
           MOVE 0 TO RESTO.

       END PROGRAM CALCULO-MUCHOS.
