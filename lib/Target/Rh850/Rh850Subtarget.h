//===-- Rh850Subtarget.h - Define Subtarget for the Rh850 ---------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file declares the Rh850 specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#ifndef RH850SUBTARGET_H
#define RH850SUBTARGET_H

#include "llvm/Target/TargetSubtargetInfo.h"
#include "llvm/MC/MCInstrItineraries.h"
#include <string>

namespace llvm {
class StringRef;

//class Rh850Subtarget : public Rh850GenSubtargetInfo {
class Rh850Subtarget {
  virtual void anchor();

public:
  // NOTE: O64 will not be supported.
  enum Rh850ABIEnum {
    UnknownABI, O32
  };

protected:
  enum Rh850ArchEnum {
    Rh85032
  };

  // Rh850 architecture version
  Rh850ArchEnum Rh850ArchVersion;

  // Rh850 supported ABIs
  Rh850ABIEnum Rh850ABI;

  // IsLittle - The target is Little Endian
  bool IsLittle;

  InstrItineraryData InstrItins;

public:
  unsigned getTargetABI() const { return Rh850ABI; }

  /// This constructor initializes the data members to match that
  /// of the specified triple.
  Rh850Subtarget(const std::string &TT, const std::string &CPU,
                const std::string &FS, bool little);

  bool isLittle() const { return IsLittle; }
};
} // End llvm namespace

#endif
