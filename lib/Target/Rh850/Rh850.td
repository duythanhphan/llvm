//===-- Rh850.td - Describe the Rh850 Target Machine ---------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
// This is the top level entry point for the Rh850 target.
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Target-independent interfaces
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Register File, Calling Conv, Instruction Descriptions
//===----------------------------------------------------------------------===//

include "Rh850RegisterInfo.td"
include "Rh850Schedule.td"
include "Rh850InstrInfo.td"

def Rh850InstrInfo : InstrInfo;

def Rh850 : Target {
// def Rh850InstrInfo : InstrInfo as before.
  let InstructionSet = Rh850InstrInfo;
}
