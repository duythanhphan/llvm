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


// We have banks of 16 registers each.
class Rh850Reg<string n> : Register<n> {
  field bits<4> Num;
  let Namespace = "Rh850";
}

// Rh850 CPU Registers
class Rh850GPRReg<bits<4> num, string n> : Rh850Reg<n> {
  let Num = num;
}

//===----------------------------------------------------------------------===//
//  Registers
//===----------------------------------------------------------------------===//

let Namespace = "Rh850" in {
  // General Purpose Registers
  def ZERO : Rh850GPRReg< 0, "ZERO">, DwarfRegNum<[0]>;
  def AT   : Rh850GPRReg< 1, "AT">,   DwarfRegNum<[1]>;
  def V0   : Rh850GPRReg< 2, "2">,    DwarfRegNum<[2]>;
  def V1   : Rh850GPRReg< 3, "3">,    DwarfRegNum<[3]>;
  def A0   : Rh850GPRReg< 4, "4">,    DwarfRegNum<[6]>;
  def A1   : Rh850GPRReg< 5, "5">,    DwarfRegNum<[7]>;
  def T9   : Rh850GPRReg< 6, "6">,    DwarfRegNum<[6]>;
  def S0   : Rh850GPRReg< 7, "7">,    DwarfRegNum<[7]>;
  def S1   : Rh850GPRReg< 8, "8">,    DwarfRegNum<[8]>;
  def S2   : Rh850GPRReg< 9, "9">,    DwarfRegNum<[9]>;
  def GP   : Rh850GPRReg< 10, "GP">,  DwarfRegNum<[10]>;
  def FP   : Rh850GPRReg< 11, "FP">,  DwarfRegNum<[11]>;
  def SW   : Rh850GPRReg< 12, "SW">,   DwarfRegNum<[12]>;
  def SP   : Rh850GPRReg< 13, "SP">,   DwarfRegNum<[13]>;
  def LR   : Rh850GPRReg< 14, "LR">,   DwarfRegNum<[14]>;
  def PC   : Rh850GPRReg< 15, "PC">,   DwarfRegNum<[15]>;
//  def MAR  : Register< 16, "MAR">,  DwarfRegNum<[16]>;
//  def MDR  : Register< 17, "MDR">,  DwarfRegNum<[17]>;
}

//===----------------------------------------------------------------------===//
// Register Classes
//===----------------------------------------------------------------------===//

def CPURegs : RegisterClass<"Rh850", [i32], 32, (add
  // Return Values and Arguments
  V0, V1, A0, A1, 
  // Not preserved across procedure calls
  T9, 
  // Callee save
  S0, S1, S2, 
  // Reserved
  ZERO, AT, GP, FP, SW, SP, LR, PC)>;

