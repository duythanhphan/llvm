# CMakeLists.txt
# Our td all in Rh850.td, Rh850RegisterInfo.td and Rh850InstrInfo.td included in 
#  Rh850.td.
set(LLVM_TARGET_DEFINITIONS Rh850.td)

# Generate Rh850GenRegisterInfo.inc and Rh850GenInstrInfo.inc which included by 
#  your hand code C++ files. 
# Rh850GenRegisterInfo.inc came from Rh850RegisterInfo.td, Rh850GenInstrInfo.inc 
#  came from Rh850InstrInfo.td.
tablegen(LLVM Rh850GenRegisterInfo.inc -gen-register-info)
tablegen(LLVM Rh850GenInstrInfo.inc -gen-instr-info)
tablegen(LLVM Rh850GenSubtargetInfo.inc -gen-subtarget)

# Rh850CommonTableGen must be defined
add_public_tablegen_target(Rh850CommonTableGen)

# Rh850CodeGen should match with LLVMBuild.txt Rh850CodeGen
add_llvm_target(Rh850CodeGen
  Rh850TargetMachine.cpp
  )

# Should match with "subdirectories =  MCTargetDesc TargetInfo" in LLVMBuild.txt
add_subdirectory(TargetInfo)
add_subdirectory(MCTargetDesc)
