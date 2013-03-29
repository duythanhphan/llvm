//===-- Rh850TargetInfo.cpp - Rh850 Target Implementation -------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "Rh850.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/TargetRegistry.h"
using namespace llvm;

Target llvm::TheRh850Target, llvm::TheRh850elTarget;

extern "C" void LLVMInitializeRh850TargetInfo() {
  RegisterTarget<Triple::rh850,
        /*HasJIT=*/true> X(TheRh850Target, "rh850", "Rh850");

  RegisterTarget<Triple::rh850el,
        /*HasJIT=*/true> Y(TheRh850elTarget, "rh850el", "Rh850el");
}
