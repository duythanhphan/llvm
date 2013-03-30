//===-- Rh850RegisterInfo.td - Rh850 Register defs -----------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Declarations that describe the RH850 register file
//===----------------------------------------------------------------------===//


// We have banks of 35 registers each.
class Rh850Reg<string n> : Register<n> {
  field bits<6> Num;
  let Namespace = "Rh850";
}

// Rh850 CPU Registers
class Rh850GPRReg<bits<6> num, string n> : Rh850Reg<n> {
  let Num = num;
}

//===----------------------------------------------------------------------===//
//  Registers
//===----------------------------------------------------------------------===//

let Namespace = "Rh850" in {
  // General Purpose Registers
  def ZERO : Rh850GPRReg< 0, "r0">,     DwarfRegNum<[0]>;
  def R1   : Rh850GPRReg< 1, "r1">,     DwarfRegNum<[1]>;
  def R2   : Rh850GPRReg< 2, "r2">,     DwarfRegNum<[2]>;
  def SP   : Rh850GPRReg< 3, "sp">,     DwarfRegNum<[3]>;
  def GP   : Rh850GPRReg< 4, "gp">,     DwarfRegNum<[4]>;
  def TP   : Rh850GPRReg< 5, "tp">,     DwarfRegNum<[5]>;
  def A0   : Rh850GPRReg< 6, "r6">,     DwarfRegNum<[6]>;
  def A1   : Rh850GPRReg< 7, "r7">,     DwarfRegNum<[7]>;
  def A2   : Rh850GPRReg< 8, "r8">,     DwarfRegNum<[8]>;
  def A3   : Rh850GPRReg< 9, "r9">,     DwarfRegNum<[9]>;
  def V0   : Rh850GPRReg< 10, "r10">,   DwarfRegNum<[10]>;
  def V1   : Rh850GPRReg< 11, "r11">,   DwarfRegNum<[11]>;
  def R12  : Rh850GPRReg< 12, "r12">,   DwarfRegNum<[12]>;
  def R13  : Rh850GPRReg< 13, "r13">,   DwarfRegNum<[13]>;
  def R14  : Rh850GPRReg< 14, "r14">,   DwarfRegNum<[14]>;
  def R15  : Rh850GPRReg< 15, "r15">,   DwarfRegNum<[15]>;
  def R16  : Rh850GPRReg< 16, "r16">,   DwarfRegNum<[16]>;
  def R17  : Rh850GPRReg< 17, "r17">,   DwarfRegNum<[17]>;
  def R18  : Rh850GPRReg< 18, "r18">,   DwarfRegNum<[18]>;
  def R19  : Rh850GPRReg< 19, "r19">,   DwarfRegNum<[19]>;
  def S0   : Rh850GPRReg< 20, "r20">,   DwarfRegNum<[20]>;
  def S1   : Rh850GPRReg< 21, "r21">,   DwarfRegNum<[21]>;
  def S2   : Rh850GPRReg< 22, "r22">,   DwarfRegNum<[22]>;
  def S3   : Rh850GPRReg< 23, "r23">,   DwarfRegNum<[23]>;
  def S4   : Rh850GPRReg< 24, "r24">,   DwarfRegNum<[24]>;
  def S5   : Rh850GPRReg< 25, "r25">,   DwarfRegNum<[25]>;
  def S6   : Rh850GPRReg< 26, "r26">,   DwarfRegNum<[26]>;
  def S7   : Rh850GPRReg< 27, "r27">,   DwarfRegNum<[27]>;
  def S8   : Rh850GPRReg< 28, "r28">,   DwarfRegNum<[28]>;
  def S9   : Rh850GPRReg< 29, "r29">,   DwarfRegNum<[29]>;
  def EP   : Rh850GPRReg< 30, "ep">,    DwarfRegNum<[30]>;
  def LP   : Rh850GPRReg< 31, "lp">,    DwarfRegNum<[31]>;
  def PC   : Rh850GPRReg< 32, "pc">,    DwarfRegNum<[32]>;
  def CC   : Rh850GPRReg< 33, "cc">,    DwarfRegNum<[33]>;
  def FCC  : Rh850GPRReg< 34, "fcc">,   DwarfRegNum<[34]>;
}

//===----------------------------------------------------------------------===//
// Register Classes
//===----------------------------------------------------------------------===//

def CPURegs : RegisterClass<"Rh850", [i32], 32, (add
  V0, V1,                                     // Return Value Registers
  R12, R13, R14, R15, R16, R17, R18, R19,     // Scratch Registers 
  A0, A1, A2, A3,                             // Arguments Registers
  S9, S8, S7, S6, S5, S4, S3, S2, S1, S0, R2, // Callee Saved Registers
  ZERO, R1, SP, GP, TP, EP, PC, CC, FCC       // Fixed Registers
)>;

