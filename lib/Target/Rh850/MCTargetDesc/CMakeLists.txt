# MCTargetDesc/CMakeLists.txt
add_llvm_library(LLVMRh850Desc
  Rh850MCTargetDesc.cpp
  )

add_dependencies(LLVMRh850Desc Rh850CommonTableGen)
