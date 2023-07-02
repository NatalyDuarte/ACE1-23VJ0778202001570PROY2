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
En esta parte se encuentran el encabezado del programa, y se llama a la funcion de validar acceso.
```
inicio:
		;; ENCABEZADO
		mov DX, offset usac
		mov AH, 09
		int 21
		mov DX, offset facultad
		mov AH, 09
		int 21
		mov DX, offset escuela
		mov AH, 09
		int 21
		mov DX, offset curso
		mov AH, 09
		int 21
		mov DX, offset nombre
		mov AH, 09
		int 21
		mov DX, offset carne
		mov AH, 09
		int 21
		;; acceso
		call validar_acceso
		int 03
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
Si las credenciales son correctas entonces se ingresa al menu principal, el cual imprime el menu y compara la respuesta del usuario para ingresar a los diferentes menus.
```
menu_principal:
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		mov DX, offset ventas
		mov AH, 09
		int 21
		mov DX, offset productosm
		mov AH, 09
		int 21
		mov DX, offset herramientas
		mov AH, 09
		int 21
		mov AH, 08
		int 21
		;;
		mov ah, 01h  ; lee un carácter
    	int 21h
    	sub al, 30h  ; convierte el carácter a número
    	mov numerop, al  ; almacena el número en la variable
		; Compara el número con 1
    	mov al, numerop
    	cmp al, 1
    	je menu_ventas; salta si es igual a 1
		; Compara el número con 2
    	mov al, numerop
    	cmp al, 2
    	je menu_productos; salta si es igual a 1
		; Compara el número con 3
    	mov al, numerop
    	cmp al, 3
    	je menu_herramientas; salta si es igual a 1
```
## Menu_productos
Al seleccionar la opcion 2 nos dirige a esta parte en la cual imprime otro menu y espera respuesta del usuario para dirigir a lo siguiente.
```
		mov DX, offset nueva_lin
		mov AH, 09
		int 21
		mov DX, offset mostrar_prod
		mov AH, 09
		int 21
		mov DX, offset ingresar_prod
		mov AH, 09
		int 21
		mov DX, offset borrar_prod
		mov AH, 09
		int 21
		mov AH, 08
		int 21
		;;
		mov ah, 01h  ; lee un carácter
    	int 21h
    	sub al, 30h  ; convierte el carácter a número
    	mov numero, al  ; almacena el número en la variable
		; Compara el número con 1
    	mov al, numero
    	cmp al, 1
    	je mostrar_productos_archivo; salta si es igual a 1
		; Compara el número con 2
    	mov al, numero
    	cmp al, 2
    	je ingresar_producto_archivo; salta si es igual a 1
		; Compara el número con 3
    	mov al, numero
    	cmp al, 3
    	je eliminar_producto_archivo; salta si es igual a 1
```
Al obtener respuesta del usuario envia a diferentes metodos entre los cuales algunos son:
```
ciclo_mostrar_rep1:
escribir_desc:
cerrar_tags:
mostrar_productos_archivo:
ciclo_convertirAcadena:
retorno_convertirAcadena:
ingresar_producto_archivo:
eliminar_producto_archivo:
ciclo_cadenas_iguales:
```
## Menu_ventas:
Al seleccionar la opcion 1 nos dirige a esta parte en la cual imprime el ingreso de datos para la compra, verifica si exite ese producto y se hace la compra, restando los productos que se vendieron.
```
menu_ventas:
	ingresar_venta_archivo:
			mov DX, offset titulo_ventas
			mov AH, 09
			int 21
			mov DX, offset sub_prod
			mov AH, 09
			int 21
			mov DX, offset nueva_lin
			mov AH, 09
			int 21
			;;; PEDIR CODIGO
	pedir_de_nuevo_codigov:
			mov DX, offset elegiv_code
			mov AH, 09
			int 21
			mov DX, offset buffer_entrada
			mov AH, 0a
			int 21
			;;; verificar que el tamaño del codigo no sea mayor a 5
			mov DI, offset buffer_entrada
			inc DI
			mov AL, [DI]
			cmp AL, 00
			je  pedir_de_nuevo_codigov
			cmp AL, 05
			jb  aceptar_tam_codv  ;; jb --> jump if below
			mov DX, offset nueva_lin
			mov AH, 09
			int 21
			jmp pedir_de_nuevo_codigov
			;;; mover al campo codigo en la estructura producto
	aceptar_tam_codv:
			mov SI, offset cod_prodv
			mov DI, offset buffer_entrada
			inc DI
			mov CH, 00
			mov CL, [DI]
			inc DI  ;; me posiciono en el contenido del buffer
	copiar_codigov:	mov AL, [DI]
			mov [SI], AL
			inc SI
			inc DI
			loop copiar_codigov  ;; restarle 1 a CX, verificar que CX no sea 0, si no es 0 va a la etiqueta, 
			;;; la cadena ingresada en la estructura
			;;;
			mov DX, offset nueva_lin
			mov AH, 09
			int 21
	pedir_de_nuevo_unidadesv:
			mov DX, offset elegiv_units
			mov AH, 09
			int 21
			mov DX, offset buffer_entrada
			mov AH, 0a
			int 21
			;;; verificar que el tamaño del codigo no sea mayor a 5
			mov DI, offset buffer_entrada
			inc DI
			mov AL, [DI]
			cmp AL, 00
			je  pedir_de_nuevo_unidadesv
			cmp AL, 20
			jb  aceptar_tam_unidadesv
			mov DX, offset nueva_lin
			mov AH, 09
			int 21
			jmp pedir_de_nuevo_unidadesv
			;;; mover al campo codigo en la estructura producto
	aceptar_tam_unidadesv:
			mov SI, offset cod_unidadesv
			mov DI, offset buffer_entrada
			inc DI
			mov CH, 00
			mov CL, [DI]
			inc DI  ;; me posiciono en el contenido del buffer
	copiar_unidadesv:	mov AL, [DI]
			mov [SI], AL
			inc SI
			inc DI
			loop copiar_unidadesv  ;; restarle 1 a CX, verificar que CX no sea 0, si no es 0 va a la etiqueta, 
			;;; la cadena ingresada en la estructura
			;;;
			mov DX, offset nueva_lin
			mov AH, 09
			int 21
			;; finalizó pedir datos de producto
			;;
			;;
			;;
			;;
			;; GUARDAR EN ARCHIVO
			;; probar abrirlo normal
			mov AL, 02
			mov AH, 3d
			mov DX, offset archivo_ventas
			int 21
			;; si no lo cremos
			jc  crear_archivo_ventas
			;; si abre escribimos
			jmp guardar_handle_ventas
	crear_archivo_ventas:
			mov CX, 0000
			mov DX, offset archivo_ventas
			mov AH, 3c
			int 21
			;; archivo abierto
	guardar_handle_ventas:
			;; guardamos handle
			mov [handle_ventas], AX
			;; obtener handle
			mov BX, [handle_ventas]
			;; vamos al final del archivo
			mov CX, 00
			mov DX, 00
			mov AL, 02
			mov AH, 42
			int 21
			;; escribir el producto en el archivo
			;; escribí los dos primeros campos
			mov CX, 26
			mov DX, offset cod_prodv
			mov AH, 40
			int 21
			;; escribo los otros dos
			mov CX, 0004
			mov DX, offset cod_unidadesv
			mov AH, 40
			int 21
			;; cerrar archivo
			mov AH, 3e
			int 21
			;;
			jmp menu_principal
```
## Menu_herramientas:
Al seleccionar la opcion 3 nos dirige a esta parte en la cual imprime el menu de reportes.
```
menu_herramientas:
	mov DX, offset nueva_lin
	mov AH, 09
	int 21
	mov DX, offset repocatalogo
	mov AH, 09
	int 21
	mov DX, offset repoalfaproduc
	mov AH, 09
	int 21
	mov DX, offset repoventas
	mov AH, 09
	int 21
	mov DX, offset repoprodusin
	mov AH, 09
	int 21
	mov AH, 08
	int 21
	;;
	mov ah, 01h  ; lee un carácter
	int 21h
	sub al, 30h  ; convierte el carácter a número
	mov numero, al  ; almacena el número en la variable
	; Compara el número con 1
	mov al, numero
	cmp al, 1
	je generar_catalogo; salta si es igual a 1
	; Compara el número con 2
```
Al obtener respuesta del usuario envia a diferentes metodos entre los cuales algunos son:
```
generar_catalogo:
ciclo_mostrar_rep1:
fin_mostrar_rep1:
imprimir_estructura_html:
ciclo_escribir_codigo:
```