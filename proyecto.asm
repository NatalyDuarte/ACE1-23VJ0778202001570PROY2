NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
CAJA        equ      03
OBJETIVO    equ      04
SUELO       equ      05
.MODEL SMALL
.RADIX 16
.STACK
.DATA
;; pagina inicial
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
.CODE
.STARTUP
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
		je ciclo_juego
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

entradac:
		call clear_pantalla
		mov AL, 0
		mov [opcion1], AL      ;; reinicio de la variable de salida
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
		mov DX, offset cambiarcontroles
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
		mov DX, offset regresar
		mov AH, 09
		int 21
		pop DX
		;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_confi:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_confi
		cmp AH, 50
		je sumar_opcion_menu_confi
		cmp AH, 1c  ;; le doy enter
		je fin_menu_confi
		jmp entrada_menu_confi
restar_opcion_menu_confi:
		mov AL, [opcion1]
		dec AL
		cmp AL, 0ff
		je volver_a_ceroc
		mov [opcion1], AL
		jmp mover_flecha_menu_confi
sumar_opcion_menu_confi:
		mov AL, [opcion1]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximoc
		mov [opcion1], AL
		jmp mover_flecha_menu_confi
volver_a_ceroc:
		mov AL, 0
		mov [opcion1], AL
		jmp mover_flecha_menu_confi
volver_a_maximoc:
		mov AL, [maximo]
		dec AL
		mov [opcion1], AL
		jmp mover_flecha_menu_confi
mover_flecha_menu_confi:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion1]
ciclo_ubicar_flecha_menu_confi:
		cmp CL, 0
		je pintar_flecha_menu_confi
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_confi
pintar_flecha_menu_confi:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_confi
		;;
fin_menu_confi:
		mov AL, [opcion1]
		;; > INICIAR JUEGO
		;; > Configurar
		
		;; > Retornar
		cmp AL, 1
		ret
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
		
entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 1c  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;

fin_menu_principal:
		ret
delay:
    ; Implementa una pequeña espera para ralentizar la ejecución
    mov cx, 0
    delay_loop:
        mov dx, 0FFFFh
        delay_inner_loop:
            dec dx
            jnz delay_inner_loop

        inc cx
        cmp cx, 55  ; Ajusta este número para controlar la duración de la espera
        jne delay_loop
    ret
infi:
		jmp infi
		jmp fin
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret
pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret
pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret
;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret


;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret


;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		ret
cargar_un_nivel:
		mov AL, 00
		mov DX, offset nivel_x
		mov AH, 3d
		int 21
		jc archno
		mov [handle_nivel], AX
		;;
ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
		;; lógica del parseo ;;
		;;;;;;;;;;;;;;;;;;;;;;;
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		;;jne nosejugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3e
		mov BX, [handle_nivel]
		int 21
		;;
		int 03
		jmp ciclo_juego
		jmp fin
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3f
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret

;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret


;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
		push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret


;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret
ciclo_juego:
		call pintar_mapa
		call entrada_juego
		jmp ciclo_juego
		;;;;;;;;;;;;;;;;
entrada_juego:
		mov AH, 01
		int 16
		jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, [control_pausa]
		je pausamenu
		cmp AH, 3c
		ret
pausamenu:
	call clear_pantalla
	;;;; IMPRIMIR ENCABEZADO
	mov DL, 0c
	mov DH, 05
	mov BH, 00
	mov AH, 02
	int 10
	;; <<-- posicionar el cursor
	push DX
	mov DX, offset pausa
	mov AH, 09
	int 21
	pop DX
	call menu_pausa
	mov DL,[opcion2]
	cmp DL,1
	je ciclo_juego
	cmp DL,2
	je inicio
menu_pausa:
	mov AL, 0
	mov [opcion2], AL      ;; reinicio de la variable de salida
	mov AL, 3
	mov [maximo], AL
	mov AX, 50
	mov BX, 28
	mov [xFlecha], AX
	mov [yFlecha], BX 
	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10
	push DX
	mov DX, offset continuar
	mov AH, 09
	int 21
	pop DX
	;;
	add DH, 02
	mov BH, 00
	mov AH, 02
	int 10
	push DX
	mov DX, offset regresar
	mov AH, 09
	int 21
	pop DX
	call pintar_flecha
entrada_menu_pausa:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_pausa
		cmp AH, 50
		je sumar_opcion_menu_pausa
		cmp AH, 1c  ;; le doy F1
		je fin_menu_pausa
		jmp entrada_menu_pausa
restar_opcion_menu_pausa:
		mov AL, [opcion2]
		dec AL
		cmp AL, 0ff
		je volver_a_cerop
		mov [opcion2], AL
		jmp mover_flecha_menu_pausa
sumar_opcion_menu_pausa:
		mov AL, [opcion2]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximop
		mov [opcion2], AL
		jmp mover_flecha_menu_pausa
volver_a_cerop:
		mov AL, 0
		mov [opcion2], AL
		jmp mover_flecha_menu_pausa
volver_a_maximop:
		mov AL, [maximo]
		dec AL
		mov [opcion2], AL
		jmp mover_flecha_menu_pausa
mover_flecha_menu_pausa:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion2]
ciclo_ubicar_flecha_menu_pausa:
		cmp CL, 0
		je pintar_flecha_menu_pausa
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_pausa
pintar_flecha_menu_pausa:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_pausa
		;;
fin_menu_pausa:
		ret
mover_jugador_arr:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_arriba
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret
hay_pared_arriba:
		ret
mover_jugador_aba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_abajo
		mov [yJugador], AL
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
hay_pared_abajo:
		ret
mover_jugador_izq:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_izquierda
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret
hay_pared_izquierda:
		ret
mover_jugador_der:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_derecha
		mov [xJugador], AH
		;;
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
hay_pared_derecha:
		ret
fin_entrada_juego:
		ret
archno:
		call clear_pantalla
		;;;; IMPRIMIR ENCABEZADO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset archnoencontrado
		mov AH, 09
		int 21
		pop DX
		call delay
		jmp inicio
nosejugador:
		call clear_pantalla
		;;;; IMPRIMIR ENCABEZADO
		mov DL, 0c
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset nojugador
		mov AH, 09
		int 21
		pop DX
		call delay
		jmp inicio
fin:
.EXIT
END
