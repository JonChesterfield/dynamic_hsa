# dynamic_hsa
A hack to work around HSA, CMake and LLVM build dependencies

HSA is an amdgpu runtime which calls clang to build some shaders. It therefore needs a working clang to build.

Clang assumes HSA exists and is installed somewhere that tools can find, so that amdgpu-arch works and various
test / cmake controls work.

LLVM OpenMP has some gnarly preprocessor code I wrote ages ago to transparently swap between the HSA library
or dlopen of the HSA library so that one can build without HSA available and then run with it available. Likewise
for CUDA, since Linux build bots may not have the CUDA toolchain installed.

This repo exists as a hack by which I can work around the cyclic dependency. First commit is to copy the code
I wrote and some others have added to out of LLVM and into this repo. A following one will be to drop the calls
into LLVM and use dlopen/dlsym instead taking it a step closer to the original commit.

I'm leaving the license headers unchanged and copying across the LLVM license file. See also https://reviews.llvm.org/D95155

