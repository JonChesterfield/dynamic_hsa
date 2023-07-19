# dynamic_hsa
A hack to work around HSA, CMake and LLVM build dependencies

HSA is an amdgpu runtime which calls clang to build some shaders. It therefore needs a working clang to build.

Clang assumes HSA exists and is installed somewhere that tools can find, so that amdgpu-arch works and various
test / cmake controls work.

LLVM OpenMP has some gnarly preprocessor code I wrote ages ago to transparently swap between the HSA library
or dlopen of the HSA library so that one can build without HSA available and then run with it available. Likewise
for CUDA, since Linux build bots may not have the CUDA toolchain installed.

This repo exists as a hack by which I can work around the cyclic dependency. The contents of include can be
'installed' into the llvm tree to resolve dependencies on the headers. Next step is to jury rig cmake.

I'm leaving the license headers unchanged and copying across the LLVM license file. See also https://reviews.llvm.org/D95155

