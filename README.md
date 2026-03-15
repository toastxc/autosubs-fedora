# autosubs-fedora

## to reproduce error
```bash
git clone https://github.com/tmoroney/auto-subs.git
git clone https://github.com/toastxc/autosubs-fedora.git

cp autosubs-fedora/.dockerignore  auto-subs/AutoSubs-App/
cp autosubs-fedora/Dockerfile  auto-subs/AutoSubs-App/
cp autosubs-fedora/docker-compose.yml  auto-subs/AutoSubs-App/
cd auto-subs/AutoSubs-App/

time docker-compose up -d
```

## Error
```text



error: failed to run custom build command for `whisper-rs-sys v0.14.1 (https://codeberg.org/tazz4843/whisper-rs.git#d38738df)`

Caused by:
  process didn't exit successfully: `/app/src-tauri/target/release/build/whisper-rs-sys-53de8ae31b1a1fc5/build-script-build` (exit status: 101)
  --- stdout
  cargo:rustc-link-lib=dylib=stdc++
  cargo:rustc-link-lib=static=whisper.coreml
  cargo:rerun-if-changed=wrapper.h
  cargo:rerun-if-env-changed=TARGET
  cargo:rerun-if-env-changed=BINDGEN_EXTRA_CLANG_ARGS_x86_64-unknown-linux-gnu
  cargo:rerun-if-env-changed=BINDGEN_EXTRA_CLANG_ARGS_x86_64_unknown_linux_gnu
  cargo:rerun-if-env-changed=BINDGEN_EXTRA_CLANG_ARGS
  cargo:rerun-if-changed=wrapper.h
  cargo:rerun-if-changed=whisper.cpp/ggml/include/ggml-metal.h
  cargo:rerun-if-changed=./whisper.cpp/include/whisper.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdbool.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/__stddef_max_align_t.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdint.h
  cargo:rerun-if-changed=/usr/include/stdint.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/libc-header-start.h
  cargo:rerun-if-changed=/usr/include/features.h
  cargo:rerun-if-changed=/usr/include/features-time64.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/timesize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/stdc-predef.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/sys/cdefs.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/long-double.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/gnu/stubs.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/gnu/stubs-64.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/features.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/timesize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/typesizes.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/time64.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wchar.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/wordsize.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/stdint-intn.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/stdio.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/libc-header-start.h
  cargo:rerun-if-changed=/usr/include/features.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/__FILE.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/FILE.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/types.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/stdio_lim.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/floatn.h
  cargo:rerun-if-changed=/usr/include/features.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/floatn-common.h
  cargo:rerun-if-changed=/usr/include/features.h
  cargo:rerun-if-changed=/usr/include/x86_64-linux-gnu/bits/long-double.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml-cpu.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml-backend.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml-alloc.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdint.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdbool.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml.h
  cargo:rerun-if-changed=./whisper.cpp/ggml/include/ggml-backend.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h
  cargo:rerun-if-changed=/usr/lib/llvm-14/lib/clang/14.0.6/include/stdbool.h
  CMAKE_TOOLCHAIN_FILE_x86_64-unknown-linux-gnu = None
  CMAKE_TOOLCHAIN_FILE_x86_64_unknown_linux_gnu = None
  HOST_CMAKE_TOOLCHAIN_FILE = None
  CMAKE_TOOLCHAIN_FILE = None
  CMAKE_GENERATOR_x86_64-unknown-linux-gnu = None
  CMAKE_GENERATOR_x86_64_unknown_linux_gnu = None
  HOST_CMAKE_GENERATOR = None
  CMAKE_GENERATOR = None
  CMAKE_PREFIX_PATH_x86_64-unknown-linux-gnu = None
  CMAKE_PREFIX_PATH_x86_64_unknown_linux_gnu = None
  HOST_CMAKE_PREFIX_PATH = None
  CMAKE_PREFIX_PATH = None
  CMAKE_x86_64-unknown-linux-gnu = None
  CMAKE_x86_64_unknown_linux_gnu = None
  HOST_CMAKE = None
  CMAKE = None
  Running with debug output on.
  -- The C compiler identification is GNU 12.2.0
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerId.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeDetermineCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- The CXX compiler identification is GNU 12.2.0
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerId.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeDetermineCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting C compiler ABI info
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting C compiler ABI info - done
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Check for working C compiler: /usr/bin/cc - skipped
     Called from: [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting C compile features
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompileFeatures.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting C compile features - done
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompileFeatures.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting CXX compiler ABI info
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting CXX compiler ABI info - done
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Check for working CXX compiler: /usr/bin/c++ - skipped
     Called from: [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting CXX compile features
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompileFeatures.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Detecting CXX compile features - done
     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompileFeatures.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- Found Git: /usr/bin/git (found version "2.39.5") 
     Called from: [5]	/usr/share/cmake-3.25/Modules/FindPackageMessage.cmake
                  [4]	/usr/share/cmake-3.25/Modules/FindPackageHandleStandardArgs.cmake
                  [3]	/usr/share/cmake-3.25/Modules/FindGit.cmake
                  [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/cmake/git-vars.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  -- The ASM compiler identification is GNU
     Called from: [2]	/usr/share/cmake-3.25/Modules/CMakeDetermineASMCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
  -- Found assembler: /usr/bin/cc
     Called from: [2]	/usr/share/cmake-3.25/Modules/CMakeDetermineASMCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
     Called from: [5]	/usr/share/cmake-3.25/Modules/Internal/CheckSourceCompiles.cmake
                  [4]	/usr/share/cmake-3.25/Modules/CheckCSourceCompiles.cmake
                  [3]	/usr/share/cmake-3.25/Modules/FindThreads.cmake
                  [2]	/usr/share/cmake-3.25/Modules/FindThreads.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
  -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
     Called from: [5]	/usr/share/cmake-3.25/Modules/Internal/CheckSourceCompiles.cmake
                  [4]	/usr/share/cmake-3.25/Modules/CheckCSourceCompiles.cmake
                  [3]	/usr/share/cmake-3.25/Modules/FindThreads.cmake
                  [2]	/usr/share/cmake-3.25/Modules/FindThreads.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
  -- Found Threads: TRUE  
     Called from: [4]	/usr/share/cmake-3.25/Modules/FindPackageMessage.cmake
                  [3]	/usr/share/cmake-3.25/Modules/FindPackageHandleStandardArgs.cmake
                  [2]	/usr/share/cmake-3.25/Modules/FindThreads.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
  -- ccache found, compilation results will be cached. Disable with GGML_CCACHE=OFF.
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- CMAKE_SYSTEM_PROCESSOR: x86_64
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- GGML_SYSTEM_ARCH: x86
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- Including CPU backend
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- x86 detected
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/ggml-cpu/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- Adding CPU backend variant ggml-cpu: -march=native 
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/ggml-cpu/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  -- Configuring incomplete, errors occurred!
  See also "/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/build/CMakeFiles/CMakeOutput.log".

  --- stderr
  running: cd "/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/build" && CMAKE_PREFIX_PATH="" LC_ALL="C" "cmake" "-Wdev" "--debug-output" "/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp" "-B" "/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/build" "-DBUILD_SHARED_LIBS=OFF" "-DWHISPER_ALL_WARNINGS=OFF" "-DWHISPER_ALL_WARNINGS_3RD_PARTY=OFF" "-DWHISPER_BUILD_TESTS=OFF" "-DWHISPER_BUILD_EXAMPLES=OFF" "-DWHISPER_COREML=ON" "-DWHISPER_COREML_ALLOW_FALLBACK=1" "-DGGML_METAL=ON" "-DGGML_METAL_NDEBUG=ON" "-DGGML_METAL_EMBED_LIBRARY=ON" "-DCMAKE_BUILD_TYPE=Release" "-DCMAKE_ARGS=-DCMAKE_OSX_DEPLOYMENT_TARGET=13.3" "-DGGML_OPENMP=OFF" "-DCMAKE_INSTALL_PREFIX=/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out" "-DCMAKE_C_FLAGS= -ffunction-sections -fdata-sections -fPIC -m64 -w" "-DCMAKE_C_COMPILER=/usr/bin/cc" "-DCMAKE_CXX_FLAGS= -ffunction-sections -fdata-sections -fPIC -m64 -w" "-DCMAKE_CXX_COMPILER=/usr/bin/c++" "-DCMAKE_ASM_FLAGS= -ffunction-sections -fdata-sections -fPIC -m64 -w" "-DCMAKE_ASM_COMPILER=/usr/bin/cc" "-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON"
  CMake Warning (dev) at /usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake:57 (try_compile):
    Policy CMP0066 is not set: Honor per-config flags in try_compile()
    source-file signature.  Run "cmake --help-policy CMP0066" for policy
    details.  Use the cmake_policy command to set the policy and suppress this
    warning.

    For compatibility with older versions of CMake, try_compile is not honoring
    caller config-specific compiler flags (e.g.  CMAKE_C_FLAGS_DEBUG) in the
    test project.
  Call Stack (most recent call first):
    /usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake:26 (CMAKE_DETERMINE_COMPILER_ABI)
    CMakeLists.txt:2 (project)
  This warning is for project developers.  Use -Wno-dev to suppress it.

     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
  CMake Warning (dev) at /usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake:57 (try_compile):
    Policy CMP0066 is not set: Honor per-config flags in try_compile()
    source-file signature.  Run "cmake --help-policy CMP0066" for policy
    details.  Use the cmake_policy command to set the policy and suppress this
    warning.

    For compatibility with older versions of CMake, try_compile is not honoring
    caller config-specific compiler flags (e.g.  CMAKE_C_FLAGS_DEBUG) in the
    test project.
  Call Stack (most recent call first):
    /usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake:26 (CMAKE_DETERMINE_COMPILER_ABI)
    CMakeLists.txt:2 (project)
  This warning is for project developers.  Use -Wno-dev to suppress it.

     Called from: [3]	/usr/share/cmake-3.25/Modules/CMakeDetermineCompilerABI.cmake
                  [2]	/usr/share/cmake-3.25/Modules/CMakeTestCXXCompiler.cmake
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
     Entering             /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt
     Entering             /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
     Entering             /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/ggml-cpu
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
     Returning to         /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
     Entering             /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/ggml-metal
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
  CMake Error at ggml/src/ggml-metal/CMakeLists.txt:1 (find_library):
    Could not find FOUNDATION_LIBRARY using the following names: Foundation


     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/ggml-metal/CMakeLists.txt
     Returning to         /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src
     Called from: [2]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
                  [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/src/CMakeLists.txt
     Returning to         /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/ggml/CMakeLists.txt
     Returning to         /app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp
     Called from: [1]	/app/src-tauri/target/release/build/whisper-rs-sys-736f7ce35614fc42/out/whisper.cpp/CMakeLists.txt

  thread 'main' (10652) panicked at /usr/local/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cmake-0.1.57/src/lib.rs:1132:5:

  command did not execute successfully, got: exit status: 1

  build script failed, must exit now
  note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
warning: build failed, waiting for other jobs to finish...

```
