include_directories( ${CMAKE_CURRENT_BINARY_DIR}/.. ${CMAKE_CURRENT_SOURCE_DIR}/.. )

add_llvm_library(LLVMRh850Info
  Rh850TargetInfo.cpp
  )

add_dependencies(LLVMRh850Info Rh850CommonTableGen)
