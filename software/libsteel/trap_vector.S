// ----------------------------------------------------------------------------
// Copyright (c) 2020-2024 RISC-V Steel contributors
//
// This work is licensed under the MIT License, see LICENSE file for details.
// SPDX-License-Identifier: MIT
// ----------------------------------------------------------------------------

.section ".init.rvsteel_trap_vector"
.global rvsteel_trap_vector
rvsteel_trap_vector:
  .option push
  .option norvc
  j default_trap_handler    // Trap handler for non-vectored mode (default mode)
  j .
  j .
  j msi_irq_handler         // Machine software interrupt
  j .
  j .
  j .
  j mti_irq_handler         // Machine timer interrupt
  j .
  j .
  j .
  j mei_irq_handler         // Machine external interrupt
  j .
  j .
  j .
  j .
  j fast0_irq_handler       // Fast interrupt #0
  j fast1_irq_handler       // Fast interrupt #1
  j fast2_irq_handler       // Fast interrupt #2
  j fast3_irq_handler       // Fast interrupt #3
  j fast4_irq_handler       // Fast interrupt #4
  j fast5_irq_handler       // Fast interrupt #5
  j fast6_irq_handler       // Fast interrupt #6
  j fast7_irq_handler       // Fast interrupt #7
  j fast8_irq_handler       // Fast interrupt #8
  j fast9_irq_handler       // Fast interrupt #9
  j fast10_irq_handler      // Fast interrupt #10
  j fast11_irq_handler      // Fast interrupt #11
  j fast12_irq_handler      // Fast interrupt #12
  j fast13_irq_handler      // Fast interrupt #13
  j fast14_irq_handler      // Fast interrupt #14
  j fast15_irq_handler      // Fast interrupt #15
  .option pop