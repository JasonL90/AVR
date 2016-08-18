// CodeVisionAVR V2.0 C Compiler
// (C) 1998-2009 Pavel Haiduc, HP InfoTech S.R.L.


sfrb PINF=0;
sfrb PINE=1;
sfrb DDRE=2;
sfrb PORTE=3;
sfrb ADCL=4;
sfrb ADCH=5;
sfrw ADCW=4;      // 16 bit access
sfrb ADCSRA=6;
sfrb ADMUX=7;
sfrb ACSR=8;
sfrb UBRR0L=9;
sfrb UCSR0B=0xa;
sfrb UCSR0A=0xb;
sfrb UDR0=0xc;
sfrb SPCR=0xd;
sfrb SPSR=0xe;
sfrb SPDR=0xf;
sfrb PIND=0x10;
sfrb DDRD=0x11;
sfrb PORTD=0x12;
sfrb PINC=0x13;
sfrb DDRC=0x14;
sfrb PORTC=0x15;
sfrb PINB=0x16;
sfrb DDRB=0x17;
sfrb PORTB=0x18;
sfrb PINA=0x19;
sfrb DDRA=0x1a;
sfrb PORTA=0x1b;
sfrb EECR=0x1c;
sfrb EEDR=0x1d;
sfrb EEARL=0x1e;
sfrb EEARH=0x1f;
sfrw EEAR=0x1e;   // 16 bit access
sfrb SFIOR=0x20;
sfrb WDTCR=0x21;
sfrb OCDR=0x22;
sfrb OCR2=0x23;
sfrb TCNT2=0x24;
sfrb TCCR2=0x25;
sfrb ICR1L=0x26;
sfrb ICR1H=0x27;
sfrw ICR1=0x26;   // 16 bit access
sfrb OCR1BL=0x28;
sfrb OCR1BH=0x29;
sfrw OCR1B=0x28;  // 16 bit access
sfrb OCR1AL=0x2a;
sfrb OCR1AH=0x2b;
sfrw OCR1A=0x2a;  // 16 bit access
sfrb TCNT1L=0x2c;
sfrb TCNT1H=0x2d;
sfrw TCNT1=0x2c;  // 16 bit access
sfrb TCCR1B=0x2e;
sfrb TCCR1A=0x2f;
sfrb ASSR=0x30;
sfrb OCR0=0x31;
sfrb TCNT0=0x32;
sfrb TCCR0=0x33;
sfrb MCUCSR=0x34;
sfrb MCUCR=0x35;
sfrb TIFR=0x36;
sfrb TIMSK=0x37;
sfrb EIFR=0x38;
sfrb EIMSK=0x39;
sfrb EICRB=0x3a;
sfrb RAMPZ=0x3b;
sfrb XDIV=0x3c;
sfrb SPL=0x3d;
sfrb SPH=0x3e;
sfrb SREG=0x3f;
#pragma used-


CodeVisionAVR V2.0 C Compiler
(C) 1998-2009 Pavel Haiduc, HP InfoTech s.r.l.

ATmega64, ATmega128 I/O REGISTERS BIT DEFINITIONS
*/

typedef unsigned int    Word;

/* SFIOR - Special Function IO Register */


/* SPDR - SPI Data Register */



/* TWBR - TWI Bit Rate register */





/* UDR0 - USART I/O Data Register */






/* UDR1 - USART I/O Data Register */




//#define  UBRR8           0       // USART Baud Rate Register bit 8
//#define  UBRR9           1       // USART Baud Rate Register bit 9
//#define  UBRR10          2       // USART Baud Rate Register bit 10
//#define  UBRR11          3       // USART Baud Rate Register bit 11

//#define  UBRR0           0       // USART Baud Rate Register bit 0
//#define  UBRR1           1       // USART Baud Rate Register bit 1
//#define  UBRR2           2       // USART Baud Rate Register bit 2
//#define  UBRR3           3       // USART Baud Rate Register bit 3
//#define  UBRR4           4       // USART Baud Rate Register bit 4
//#define  UBRR5           5       // USART Baud Rate Register bit 5
//#define  UBRR6           6       // USART Baud Rate Register bit 6
//#define  UBRR7           7       // USART Baud Rate Register bit 7

/* SREG - Status Register */








/* SPMCSR - Store Program Memory Control Register */

/* OCDR - On-Chip Debug Related Register in I/O Memory */

//#define  JTRF            4       // JTAG Reset Flag
//#define  JTD             7       // JTAG Interface Disable

/* SFIOR - Special Function IO Register */
//#define  ACME            3       // Analog Comparator Multiplexer Enable

/* EICRA - External Interrupt Control Register A */




/* EEDR - EEPROM Data Register */


/* PORTA - Port A Data Register */



/* PORTB - Port B Data Register */



/* PORTC - Port C Data Register */



/* PORTD - Port D Data Register */



/* PORTE - Data Register, Port E */



/* PORTF - Data Register, Port F */



/* PORTG - Data Register, Port G */



/* TCCR0 - Timer/Counter Control Register */






//#define  PSR0            1       // Prescaler Reset Timer/Counter0
//#define  TSM             7       // Timer/Counter Synchronization Mode

/* TIMSK - Timer/Counter Interrupt Mask Register */




//#define  PSR321          0       // Prescaler Reset, T/C3, T/C2, T/C1
//#define  TSM             7       // Timer/Counter Synchronization Mode




/* TCCR2 - Timer/Counter Control Register */





/* ETIMSK - Extended Timer/Counter Interrupt Mask Register */


//#define  PSR321          0       // Prescaler Reset, T/C3, T/C2, T/C1
//#define  PSR1            PSR321  // For compatibility
//#define  PSR2            PSR321  // For compatibility
//#define  TSM             7       // Timer/Counter Synchronization Mode





/* WDTCR - Watchdog Timer Control Register */

/* ADMUX - The ADC multiplexer Selection Register */




// (C) 1998-2000 Pavel Haiduc, HP InfoTech S.R.L.


void delay_ms(unsigned int n);


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