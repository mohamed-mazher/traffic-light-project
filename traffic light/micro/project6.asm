
_main:

;project6.c,4 :: 		void main() {
;project6.c,5 :: 		trisb = 0;
	CLRF       TRISB+0
;project6.c,6 :: 		trisc = 0;
	CLRF       TRISC+0
;project6.c,7 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,8 :: 		trisd.b5 = 1;
	BSF        TRISD+0, 5
;project6.c,10 :: 		while (1) {
L_main0:
;project6.c,11 :: 		automatic:
___main_automatic:
;project6.c,12 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,13 :: 		if (portd.b5 == 0) {
	BTFSC      PORTD+0, 5
	GOTO       L_main2
;project6.c,14 :: 		for (i = 23; i >= 0; i--) {
	MOVLW      23
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main3:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      0
	SUBWF      _i+0, 0
L__main37:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;project6.c,15 :: 		if (portd.b5 == 1)
	BTFSS      PORTD+0, 5
	GOTO       L_main6
;project6.c,16 :: 		goto manual;
	GOTO       ___main_manual
L_main6:
;project6.c,17 :: 		portb = timer[i];
	MOVF       _i+0, 0
	ADDLW      _timer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;project6.c,18 :: 		portc.b3 = 1;
	BSF        PORTC+0, 3
;project6.c,19 :: 		portc.B2 = 1;
	BSF        PORTC+0, 2
;project6.c,20 :: 		if (i <= 3) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVF       _i+0, 0
	SUBLW      3
L__main38:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;project6.c,21 :: 		portc.B1 = 1;
	BSF        PORTC+0, 1
;project6.c,22 :: 		portc.B2 = 0;
	BCF        PORTC+0, 2
;project6.c,23 :: 		}
L_main7:
;project6.c,24 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;project6.c,14 :: 		for (i = 23; i >= 0; i--) {
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;project6.c,25 :: 		}
	GOTO       L_main3
L_main4:
;project6.c,27 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,28 :: 		for (i = 15; i >= 0; i--) {
	MOVLW      15
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main9:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      0
	SUBWF      _i+0, 0
L__main39:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;project6.c,29 :: 		if (portd.b5 == 1)
	BTFSS      PORTD+0, 5
	GOTO       L_main12
;project6.c,30 :: 		goto manual;
	GOTO       ___main_manual
L_main12:
;project6.c,31 :: 		portb = timer[i];
	MOVF       _i+0, 0
	ADDLW      _timer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;project6.c,32 :: 		portc.b0 = 1;
	BSF        PORTC+0, 0
;project6.c,33 :: 		portc.B5 = 1;
	BSF        PORTC+0, 5
;project6.c,34 :: 		if (i <= 3) {
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVF       _i+0, 0
	SUBLW      3
L__main40:
	BTFSS      STATUS+0, 0
	GOTO       L_main13
;project6.c,35 :: 		portc.B4 = 1;
	BSF        PORTC+0, 4
;project6.c,36 :: 		portc.B5 = 0;
	BCF        PORTC+0, 5
;project6.c,37 :: 		}
L_main13:
;project6.c,38 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
;project6.c,28 :: 		for (i = 15; i >= 0; i--) {
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;project6.c,39 :: 		}
	GOTO       L_main9
L_main10:
;project6.c,40 :: 		}
L_main2:
;project6.c,41 :: 		if(portd.b5 == 0)
	BTFSC      PORTD+0, 5
	GOTO       L_main15
;project6.c,42 :: 		goto automatic;
	GOTO       ___main_automatic
L_main15:
;project6.c,44 :: 		manual:
___main_manual:
;project6.c,45 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,46 :: 		if (portd.B6 == 0) {
	BTFSC      PORTD+0, 6
	GOTO       L_main16
;project6.c,47 :: 		portc.B3 = 1;
	BSF        PORTC+0, 3
;project6.c,48 :: 		portc.B1 = 1;
	BSF        PORTC+0, 1
;project6.c,49 :: 		for (i = 3; i >= 0; i--) {
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main17:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      0
	SUBWF      _i+0, 0
L__main41:
	BTFSS      STATUS+0, 0
	GOTO       L_main18
;project6.c,50 :: 		portb = timer[i];
	MOVF       _i+0, 0
	ADDLW      _timer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;project6.c,51 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;project6.c,49 :: 		for (i = 3; i >= 0; i--) {
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;project6.c,52 :: 		}
	GOTO       L_main17
L_main18:
;project6.c,53 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,54 :: 		while (portd.b5 == 1 && portd.b6 == 0) {
L_main21:
	BTFSS      PORTD+0, 5
	GOTO       L_main22
	BTFSC      PORTD+0, 6
	GOTO       L_main22
L__main35:
;project6.c,55 :: 		portc.B0 = 1;
	BSF        PORTC+0, 0
;project6.c,56 :: 		portc.B5 = 1;
	BSF        PORTC+0, 5
;project6.c,57 :: 		}
	GOTO       L_main21
L_main22:
;project6.c,58 :: 		} else {
	GOTO       L_main25
L_main16:
;project6.c,59 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,60 :: 		portc.B4 = 1;
	BSF        PORTC+0, 4
;project6.c,61 :: 		portc.B0 = 1;
	BSF        PORTC+0, 0
;project6.c,62 :: 		for (i = 3; i >= 0; i--) {
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main26:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVLW      0
	SUBWF      _i+0, 0
L__main42:
	BTFSS      STATUS+0, 0
	GOTO       L_main27
;project6.c,63 :: 		portb = timer[i];
	MOVF       _i+0, 0
	ADDLW      _timer+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;project6.c,64 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
	NOP
;project6.c,62 :: 		for (i = 3; i >= 0; i--) {
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;project6.c,65 :: 		}
	GOTO       L_main26
L_main27:
;project6.c,66 :: 		portc = 0;
	CLRF       PORTC+0
;project6.c,67 :: 		while (portd.b5 == 1 && portd.b6 == 1) {
L_main30:
	BTFSS      PORTD+0, 5
	GOTO       L_main31
	BTFSS      PORTD+0, 6
	GOTO       L_main31
L__main34:
;project6.c,68 :: 		portc.B3 = 1;
	BSF        PORTC+0, 3
;project6.c,69 :: 		portc.B2 = 1;
	BSF        PORTC+0, 2
;project6.c,70 :: 		}
	GOTO       L_main30
L_main31:
;project6.c,71 :: 		}
L_main25:
;project6.c,72 :: 		}
	GOTO       L_main0
;project6.c,73 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
