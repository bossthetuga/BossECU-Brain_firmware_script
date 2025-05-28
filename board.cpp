#include "uart_uart.h"
extern Logging uart1;

void initBoard() {
    // Other initialization...

    // USART1: PA9 (TX), PA10 (RX)
    uart1.init(UART_DEVICE_USART1, 115200);
}
