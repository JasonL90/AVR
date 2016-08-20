/*
 * LCDprac1.cpp
 *
 * Created: 2016-08-18 오후 11:54:02
 * Author : callo
 */ 
#define F_CPU 14.7456E6

#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

typedef unsigned char byte;

byte led = 0xfe; // 1111 1110
bool flag = true;
byte btn_now;
byte btn_last;



void __init__();
void changeDriection();
void rtol();
void ltor();

int main(void)
{
	__init__();
	
	
	while(1)
	{
	changeDriection();
	

		if(flag == true){
		rtol();
		}
		else if(flag ==false){
		ltor();
		}
	}
}



void __init__()
{
	DDRB = 0xff;//
	PORTB = 0xff;//
	
	DDRD = 0xfe;
	PORTD = 0xfe;
}



void changeDriection(){

	btn_now = PIND & 0x01;
	if (btn_now != btn_last) {
		if (btn_now > 0) {
		flag = !flag;
	}
	btn_last = btn_now;
}
}

void rtol(){
	PORTB = led;
	led = ((led<<1) | 0x01); //1111 1110

	_delay_ms(100);

	if(led == 0x7f){
		flag = false;

	}
	if(led == 0xff){

		led = 0x7f;
		flag = false;
	}

}

void ltor(){
	PORTB = led;
	led = ((led>>1) | 0x80);

	_delay_ms(100);

	if(led == 0xfe){
		flag = true;
	}

	if(led == 0xff)
	{
		led = 0xfe;
		flag = true;
	}
}
