#include <mega128.h>
#include <delay.h> //delay ������� ����
void delay(unsigned int i)
{
while(--i);
}
void PB_Lshift(void)
{
Byte LED; //LED ���� ����
int i;
LED=0xfe; //LED ������ �ʱⰪ
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
