# Manual Tecnico
Universidad de San Carlos de Guatemala
<br>
Facultad de Ingeniería
<br>
Escuela de Ciencias y Sistemas
<br>
Arquitectura de Computadoras y Ensambladores 1
<br>
Primer Semestre 2023
<br>
Tutor Académico Sección A: Ronald Marín
<br>
![USAC](https://github.com/Luis-Rene-Yaquian/ACE1-23VJ0778G83PRA1/assets/83621879/54acdebd-cd17-4ca3-b0df-461c87f64760)
<br>
Nataly Saraí Guzmán Duarte 202001570
<br>
## Variables
En esta parte se encuentran todas las variables utilizadas en el programa, para los encabezados, lecturas de archivos, creacion de repores etc.
```
datos     db "RRMS - 202001570$"
usac       db    "USAC",0a,"$"
facultad   db    "Facultad de Ingenieria",0a,"$"
escuela    db    "Escuela de Vacaciones",0a,"$"
curso      db    "Arqui1",0a,"$"
nombre     db    "Nataly Sarai Guzman Duarte",0a,"$"
carne      db    "202001570",0a,"$"
;;
iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"
pausa         db "PAUSA:$"
continuar        db "Continuar Partida$"
;; MENÚS
opcion        db 0
opcion1        db 0
opcion2        db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
bandera      db    "llego",0a,"$"
;;
config db "CONFIGURACION:$"
arriba db "Arriba: FLECHA ARRIBA$"
abajo  db "Abajo: FLECHA ABAJO$"
izquierda db "Izquierda: FLECHA IZQUIERDA$"
derecha  db "Derecha: FLECHA DERECHA$"
arribab db "Arriba:$"
abajob  db "Abajo:$"
izquierdab db "Izquierda:$"
derechab  db "Derecha:$"
cambiarcontroles db "Cambiar Controles$"
puntajesal  db "PUNTAJES ALTOS:$"
regresar db "Regresar$"
archnoencontrado db "Archivo No Encontrado$"
nojugador db "No Existe Ninguna Sentencia Jugador En La Entrada$"
;;
dim_sprite_vacio  db   08, 08
data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
dim_sprite_flcha  db   08, 08
data_sprite_flcha   db   00, 00, 05, 00, 00, 00, 00, 00
                    db   00, 00, 05, 05, 00, 00, 00, 00
                    db   05, 05, 05, 05, 05, 00, 00, 00
                    db   05, 05, 05, 05, 05, 05, 00, 00
                    db   05, 05, 05, 05, 05, 05, 00, 00
                    db   05, 05, 05, 05, 05, 00, 00, 00
                    db   00, 00, 05, 05, 00, 00, 00, 00
                    db   00, 00, 05, 00, 00, 00, 00, 00
dim_sprite_jug    db   08, 08
data_sprite_jug   db 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh
                  db 5Eh, 5Eh, 5Eh, 78h, 78h, 5Eh, 5Eh, 5Eh
                  db 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh
                  db 5Eh, 78h, 5Eh, 5Eh, 5Eh, 5Eh, 78h, 5Eh
                  db 5Eh, 5Eh, 7Eh, 5Eh, 5Eh, 7Eh, 5Eh, 5Eh
                  db 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh, 5Eh
                  db 5Eh, 5Eh, 7Eh, 5Eh, 5Eh, 7Eh, 5Eh, 5Eh
                  db 5Eh, 00h, 00h, 5Eh, 5Eh, 00h, 00h, 5Eh
dim_sprite_suelo  db   08, 08
data_sprite_suelo db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
                  db   5c, 5c, 5c, 5c, 5c, 5c, 5c, 5c
dim_sprite_pared  db   08, 08
data_sprite_pared db   18, 18, 0f, 0f, 18, 18, 0f, 0f
                  db   18, 0f, 0f, 18, 18, 0f, 0f, 18
                  db   0f, 0f, 18, 18, 0f, 0f, 18, 18
                  db   0f, 18, 18, 0f, 0f, 18, 18, 0f
                  db   18, 18, 0f, 0f, 18, 18, 0f, 0f
                  db   18, 0f, 0f, 18, 18, 0f, 0f, 18
                  db   0f, 0f, 18, 18, 0f, 0f, 18, 18
                  db   0f, 18, 18, 0f, 0f, 18, 18, 0f
dim_sprite_caja   db   08, 08
data_sprite_caja  db  20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h
                  db  20h, 2Fh, 95h, 5Fh, 5Fh, 95h, 2Fh, 20h
                  db  20h, 95h, 20h, 7Ch, 7Ch, 20h, 95h, 20h
                  db  20h, 95h, 7Ch, 20h, 20h, 7Ch, 95h, 20h
                  db  20h, 95h, 7Ch, 20h, 20h, 7Ch, 95h, 20h
                  db  20h, 95h, 20h, 7Ch, 7Ch, 20h, 95h, 20h
                  db  20h, 2Fh, 95h, 5Fh, 5Fh, 95h, 2Fh, 20h
                  db  20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h
dim_sprite_obj    db   08, 08
data_sprite_obj   db  20,20,20,20,20,20,20,20
                  db  20,20,5c,20,20,5c,20,20
                  db  20,5c,5c,5c,5c,5c,5c,20
                  db  20,5c,5c,5c,5c,5c,5c,20
                  db  20,20,5c,5c,5c,5c,20,20
                  db  20,20,20,5c,5c,20,20,20
                  db  20,20,20,20,20,20,20,20
                  db  20,20,20,20,20,20,20,20


;;
mapa              db   3e8 dup (0)
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4b
control_derecha   db  4d
control_pausa     db  39
;; NIVELES
nivel_x           db  "NIV.TXT",00
handle_nivel      dw  0000
nivel_1           db  "NIV.00",00
handle_nivel1     dw  0000
nivel_2           db  "NIV.01",00
handle_nivel2     dw  0000
nivel_3           db  "NIV.10",00
handle_nivel3     dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
;; JUEGO
xJugador      db 0
yJugador      db 0
puntos        dw 0
```
## Inicio
En esta parte se encuentran el encabezado del programa y validacion de las opciones del menu principal.
```
inicio:
		;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10
		call clear_pantalla
		;;;; IMPRIMIR ENCABEZADO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset usac
		mov AH, 09
		int 21
		pop DX
		;;
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset facultad
		mov AH, 09
		int 21
		pop DX
		;;
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset escuela
		mov AH, 09
		int 21
		pop DX
		;;
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset curso
		mov AH, 09
		int 21
		pop DX
		;;
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset nombre
		mov AH, 09
		int 21
		pop DX
        ;;
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset carne
		mov AH, 09
		int 21
		pop DX
        ;;
		pop DX
		;;
		call delay
		;;;;;;;;;;;;;;;;
		call menu_principal
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je cargar_un_nivel1
		;; > CARGAR NIVEL
		cmp AL, 1
		je cargar_un_nivel
		;; > CONFIGURACION
		cmp AL, 2
		je menu_configuracion
		;;;;
		;; > PUNTAJES ALTOS
		cmp AL, 3
		je menu_puntajes
		;; > SALIR
		cmp AL, 4
		je fin
```
## Validar acceso
En esta parte se verifica que este el archivo de acceso, se verifican si las credenciales son correctas y si no es asi o no se encuentra el archivo se cierra automaticamente el programa. Se utilizan diferentes metodos como:
```
validar_acceso:
ciclo_lineaXlinea:
ciclo_obtener_linea:
fin_leer_linea:
verificar_cadena_credenciales: 
entre otros
```
## Menu_principal.
Se ingresa al menu principal, el cual imprime el menu y compara en que posicion esta la flecha para ver que eligio el usuario.
```
menu_principal:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
```
## Menu_puntajes
Se ingresa al menu puntajes, muestra un tiempo los puntajes y regresa al menu principal.
```
menu_puntajes:
		call clear_pantalla
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset puntajesal
		mov AH, 09
		int 21
		pop DX
		call delay
		jmp inicio
```
## Menu_configuracion
Se ingresa al menu configuracion, muestra de que manera esta configurado el movimiento del personaje y dara la opcion de cambairlo o regresar al menu principal.
```
menu_configuracion:
		call clear_pantalla
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset config
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset derecha
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset abajo
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset arriba
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset izquierda
		mov AH, 09
		int 21
		pop DX
		;;
		call delay;;
```
## Funciones para pintar mapa de juego y movimiento
Se observan diferentes funciones para ver, crear y leer archivos para la creacion del mapa del juego.
![image](https://github.com/NatalyDuarte/ACE1-23VJ0778202001570PROY2/assets/82484670/967f45a0-ccd6-4d87-a6f6-f6fddab243d2)
