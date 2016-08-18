#include <mega128.h>
#include <delay.h> //delay 헤더파일 포함
void delay(unsigned int i)
{
while(--i);
}
void PB_Lshift(void)
{
Byte LED; //LED 변수 정의
int i;
LED=0xfe; //LED 변수의 초기값
for(i=0; i<8; i++)
{
delay(0xffff);
PORTB=LED;
LED=(LED<<1)|0x01;
}
}
void main(void)
{
DDRB= 0xff;
while(1)
{
PB_Lshift();
delay(0xffff);
}
}
