//===-- Rh850MCTargetDesc.h - Rh850 Target Descriptions -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides Rh850 specific target descriptions.
//
//===----------------------------------------------------------------------===//

#ifndef RH850MCTARGETDESC_H
#define RH850MCTARGETDESC_H

namespace llvm {
class Target;

extern Target TheRh850Target;
} // End llvm namespace

// Defines symbolic names for Rh850 registers.  This defines a mapping from
// register name to register number.
#define GET_REGINFO_ENUM
#include "Rh850GenRegisterInfo.inc"

// Defines symbolic names for the Rh850 instructions.
#define GET_INSTRINFO_ENUM
#include "Rh850GenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "Rh850GenSubtargetInfo.inc"
#endif


