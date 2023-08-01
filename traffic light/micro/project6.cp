#line 1 "C:/Users/Lenovo/Desktop/New folder (4)/micro/project6.c"
char timer[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 32, 33, 34, 35};
int i = 0;

void main() {
 trisb = 0;
 trisc = 0;
 portc = 0;
 trisd.b5 = 1;

 while (1) {
 automatic:
 portc = 0;
 if (portd.b5 == 0) {
 for (i = 23; i >= 0; i--) {
 if (portd.b5 == 1)
 goto manual;
 portb = timer[i];
 portc.b3 = 1;
 portc.B2 = 1;
 if (i <= 3) {
 portc.B1 = 1;
 portc.B2 = 0;
 }
 delay_ms(200);
 }

 portc = 0;
 for (i = 15; i >= 0; i--) {
 if (portd.b5 == 1)
 goto manual;
 portb = timer[i];
 portc.b0 = 1;
 portc.B5 = 1;
 if (i <= 3) {
 portc.B4 = 1;
 portc.B5 = 0;
 }
 delay_ms(200);
 }
 }
 if(portd.b5 == 0)
 goto automatic;

 manual:
 portc = 0;
 if (portd.B6 == 0) {
 portc.B3 = 1;
 portc.B1 = 1;
 for (i = 3; i >= 0; i--) {
 portb = timer[i];
 delay_ms(1000);
 }
 portc = 0;
 while (portd.b5 == 1 && portd.b6 == 0) {
 portc.B0 = 1;
 portc.B5 = 1;
 }
 } else {
 portc = 0;
 portc.B4 = 1;
 portc.B0 = 1;
 for (i = 3; i >= 0; i--) {
 portb = timer[i];
 delay_ms(1000);
 }
 portc = 0;
 while (portd.b5 == 1 && portd.b6 == 1) {
 portc.B3 = 1;
 portc.B2 = 1;
 }
 }
 }
}
