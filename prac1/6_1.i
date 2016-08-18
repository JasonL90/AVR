// CodeVisionAVR V2.0 C Compiler
// (C) 1998-2009 Pavel Haiduc, HP InfoTech S.R.L.
// I/O registers definitions for the ATmega128
#pragma used+
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
// Interrupt vectors definitions
/*
CodeVisionAVR V2.0 C Compiler
(C) 1998-2009 Pavel Haiduc, HP InfoTech s.r.l.

ATmega64, ATmega128 I/O REGISTERS BIT DEFINITIONS
*/
typedef unsigned char   Byte;
typedef unsigned int    Word;
/* ***** ANALOG_COMPARATOR ************ */
/* SFIOR - Special Function IO Register */
/* ACSR - Analog Comparator Control And Status Register */
/* ***** SPI ************************** */
/* SPDR - SPI Data Register */
/* SPSR - SPI Status Register */
/* SPCR - SPI Control Register */
/* ***** TWI ************************** */
/* TWBR - TWI Bit Rate register */
/* TWCR - TWI Control Register */
/* TWSR - TWI Status Register */
/* TWDR - TWI Data register */
/* TWAR - TWI (Slave) Address register */
/* ***** USART0 *********************** */
/* UDR0 - USART I/O Data Register */
/* UCSR0A - USART Control and Status Register A */
/* UCSR0B - USART Control and Status Register B */
/* UCSR0C - USART Control and Status Register C */
/* UBRR0H - USART Baud Rate Register Hight Byte */
/* UBRR0L - USART Baud Rate Register Low Byte */
/* ***** USART1 *********************** */
/* UDR1 - USART I/O Data Register */
/* UCSR1A - USART Control and Status Register A */
/* UCSR1B - USART Control and Status Register B */
/* UCSR1C - USART Control and Status Register C */
/* UBRR1H - USART Baud Rate Register Hight Byte */
//#define  UBRR8           0       // USART Baud Rate Register bit 8
//#define  UBRR9           1       // USART Baud Rate Register bit 9
//#define  UBRR10          2       // USART Baud Rate Register bit 10
//#define  UBRR11          3       // USART Baud Rate Register bit 11
/* UBRR1L - USART Baud Rate Register Low Byte */
//#define  UBRR0           0       // USART Baud Rate Register bit 0
//#define  UBRR1           1       // USART Baud Rate Register bit 1
//#define  UBRR2           2       // USART Baud Rate Register bit 2
//#define  UBRR3           3       // USART Baud Rate Register bit 3
//#define  UBRR4           4       // USART Baud Rate Register bit 4
//#define  UBRR5           5       // USART Baud Rate Register bit 5
//#define  UBRR6           6       // USART Baud Rate Register bit 6
//#define  UBRR7           7       // USART Baud Rate Register bit 7
/* ***** CPU ************************** */
/* SREG - Status Register */
/* MCUCR - MCU Control Register */
/* XMCRA - External Memory Control Register A */
/* XMCRB - External Memory Control Register B */
/* OSCCAL - Oscillator Calibration Value */
/* XDIV - XTAL Divide Control Register */
/* MCUCSR - MCU Control And Status Register */
/* RAMPZ - RAM Page Z Select Register */
/* ***** BOOT_LOAD ******************** */
/* SPMCSR - Store Program Memory Control Register */
/* ***** JTAG ************************* */
/* OCDR - On-Chip Debug Related Register in I/O Memory */
/* MCUCSR - MCU Control And Status Register */
//#define  JTRF            4       // JTAG Reset Flag
//#define  JTD             7       // JTAG Interface Disable
/* ***** MISC ************************* */
/* SFIOR - Special Function IO Register */
//#define  ACME            3       // Analog Comparator Multiplexer Enable
/* ***** EXTERNAL_INTERRUPT *********** */
/* EICRA - External Interrupt Control Register A */
/* EICRB - External Interrupt Control Register B */
/* EIMSK - External Interrupt Mask Register */
/* EIFR - External Interrupt Flag Register */
/* ***** EEPROM *********************** */
/* EEDR - EEPROM Data Register */
/* EECR - EEPROM Control Register */
/* ***** PORTA ************************ */
/* PORTA - Port A Data Register */
/* DDRA - Port A Data Direction Register */
/* PINA - Port A Input Pins */
/* ***** PORTB ************************ */
/* PORTB - Port B Data Register */
/* DDRB - Port B Data Direction Register */
/* PINB - Port B Input Pins */
/* ***** PORTC ************************ */
/* PORTC - Port C Data Register */
/* DDRC - Port C Data Direction Register */
/* PINC - Port C Input Pins */
/* ***** PORTD ************************ */
/* PORTD - Port D Data Register */
/* DDRD - Port D Data Direction Register */
/* PIND - Port D Input Pins */
/* ***** PORTE ************************ */
/* PORTE - Data Register, Port E */
/* DDRE - Data Direction Register, Port E */
/* PINE - Input Pins, Port E */
/* ***** PORTF ************************ */
/* PORTF - Data Register, Port F */
/* DDRF - Data Direction Register, Port F */
/* PINF - Input Pins, Port F */
/* ***** PORTG ************************ */
/* PORTG - Data Register, Port G */
/* DDRG - Data Direction Register, Port G */
/* PING - Input Pins, Port G */
/* ***** TIMER_COUNTER_0 ************** */
/* TCCR0 - Timer/Counter Control Register */
/* TCNT0 - Timer/Counter Register */
/* OCR0 - Output Compare Register */
/* ASSR - Asynchronus Status Register */
/* TIMSK - Timer/Counter Interrupt Mask Register */
/* TIFR - Timer/Counter Interrupt Flag register */
/* SFIOR - Special Function IO Register */
//#define  PSR0            1       // Prescaler Reset Timer/Counter0
//#define  TSM             7       // Timer/Counter Synchronization Mode
/* ***** TIMER_COUNTER_1 ************** */
/* TIMSK - Timer/Counter Interrupt Mask Register */
/* ETIMSK - Extended Timer/Counter Interrupt Mask Register */
/* TIFR - Timer/Counter Interrupt Flag register */
/* ETIFR - Extended Timer/Counter Interrupt Flag register */
/* SFIOR - Special Function IO Register */
//#define  PSR321          0       // Prescaler Reset, T/C3, T/C2, T/C1
//#define  TSM             7       // Timer/Counter Synchronization Mode
/* TCCR1A - Timer/Counter1 Control Register A */
/* TCCR1B - Timer/Counter1 Control Register B */
/* TCCR1C - Timer/Counter1 Control Register C */
/* ***** TIMER_COUNTER_2 ************** */
/* TCCR2 - Timer/Counter Control Register */
/* TCNT2 - Timer/Counter Register */
/* OCR2 - Output Compare Register */
/* TIMSK -  */
/* TIFR - Timer/Counter Interrupt Flag Register */
/* ***** TIMER_COUNTER_3 ************** */
/* ETIMSK - Extended Timer/Counter Interrupt Mask Register */
/* ETIFR - Extended Timer/Counter Interrupt Flag register */
/* SFIOR - Special Function IO Register */
//#define  PSR321          0       // Prescaler Reset, T/C3, T/C2, T/C1
//#define  PSR1            PSR321  // For compatibility
//#define  PSR2            PSR321  // For compatibility
//#define  TSM             7       // Timer/Counter Synchronization Mode
/* TCCR3A - Timer/Counter3 Control Register A */
/* TCCR3B - Timer/Counter3 Control Register B */
/* TCCR3C - Timer/Counter3 Control Register C */
/* TCNT3L - Timer/Counter3 Low Byte */
/* ***** WATCHDOG ********************* */
/* WDTCR - Watchdog Timer Control Register */
/* ***** AD_CONVERTER ***************** */
/* ADMUX - The ADC multiplexer Selection Register */
/* ADCSRA - The ADC Control and Status register */
/* ADCH - ADC Data Register High Byte */
/* ADCL - ADC Data Register Low Byte */
// CodeVisionAVR C Compiler
// (C) 1998-2000 Pavel Haiduc, HP InfoTech S.R.L.
#pragma used+
void delay_us(unsigned int n);
void delay_ms(unsigned int n);
#pragma used-
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
