//===-- Rh850.h - Top-level interface for Rh850 representation ----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the entry points for global functions defined in
// the LLVM Rh850 back-end.
//
//===----------------------------------------------------------------------===//

#ifndef TARGET_RH850_H
#define TARGET_RH850_H

#include "MCTargetDesc/Rh850MCTargetDesc.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {
  class Rh850TargetMachine;
  class FunctionPass;

  FunctionPass *createRh850ISelDag(Rh850TargetMachine &TM);

} // end namespace llvm;

#endif
