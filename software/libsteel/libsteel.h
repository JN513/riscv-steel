// ----------------------------------------------------------------------------
// Copyright (c) 2020-2024 RISC-V Steel contributors
//
// This work is licensed under the MIT License, see LICENSE file for details.
// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------

#ifndef __LIBSTEEL_MCU__
#define __LIBSTEEL_MCU__

#include "libsteel/csr.h"
#include "libsteel/gpio.h"
#include "libsteel/mtimer.h"
#include "libsteel/spi.h"
#include "libsteel/uart.h"

// Memory Map
#define RVSTEEL_UART_ADDRESS 0x80000000U
#define RVSTEEL_MTIMER_ADDRESS 0x80010000U
#define RVSTEEL_GPIO_ADDRESS 0x80020000U
#define RVSTEEL_SPI_ADDRESS 0x80030000U

// RISC-V Steel Peripherals
#define RVSTEEL_UART ((UartDevice *)RVSTEEL_UART_ADDRESS)       // RISC-V Steel UART
#define RVSTEEL_MTIMER ((MTimerDevice *)RVSTEEL_MTIMER_ADDRESS) // RISC-V Steel MTimer
#define RVSTEEL_GPIO ((GpioDevice *)RVSTEEL_GPIO_ADDRESS)       // RISC-V Steel GPIO
#define RVSTEEL_SPI ((SpiDevice *)RVSTEEL_SPI_ADDRESS)          // RISC-V Steel SPI

#endif // __LIBSTEEL_MCU__
