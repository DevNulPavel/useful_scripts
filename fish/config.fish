# Path variables
set -g -x PATH /usr/local/bin $PATH
#set -g -x PATH /usr/local/sbin $PATH
set -g -x PATH /Users/devnul/bin $PATH

# Go
set -g -x GOPATH /Users/devnul/go
set -g -x PATH /Users/devnul/go/bin $PATH

# QT
set -g -x Qt5Widgets_DIR /usr/local/opt/qt5/lib/cmake/Qt5Widgets

# Android
#set -g -x ANDROID_SDK /Users/devnul/AndroidSDK
set -g -x ANDROID_SDK /Users/devnul/AndroidSDK_AndroidStudio
set -g -x ANDROID_SDK_ROOT $ANDROID_SDK
set -g -x ANDROID_HOME $ANDROID_SDK
#set -g -x ANDROID_NDK /Users/devnul/AndroidNDK_15
#set -g -x ANDROID_NDK /Users/devnul/AndroidNDK_18
#set -g -x ANDROID_NDK /Users/devnul/AndroidNDK_19
#set -g -x ANDROID_NDK /Users/devnul/AndroidNDK_21
set -g -x ANDROID_NDK /usr/local/opt/AndroidNDK_21
#set -g -x ANDROID_NDK /Users/devnul/AndroidSDK_AndroidStudio/ndk-bundle
set -g -x ANDROID_NDK_ROOT $ANDROID_NDK
set -g -x ANDROID_NDK_HOME $ANDROID_NDK
set -g -x NDK_ROOT $ANDROID_NDK
set -g -x NDK_HOME $ANDROID_NDK
set -g -x PATH $PATH $ANDROID_SDK/tools $ANDROID_SDK/platform-tools $ANDROID_SDK $ANDROID_NDK $ANDROID_NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin

# Brew C include paths
set -g -x C_INCLUDE_PATH $C_INCLUDE_PATH /usr/local/include
set -g -x C_INCLUDE_PATH $C_INCLUDE_PATH /usr/local/opt

# Brew  C++ include paths
set -g -x CPLUS_INCLUDE_PATH $C_INCLUDE_PATH

# Brew libs path
set -g -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /usr/local/lib

# Vulkan
set -g -x VULKAN_SDK /Users/devnul/VulkanSDK/macOS
set -g -x PATH $PATH $VULKAN_SDK/bin

# PVR
# set -g -x PATH $PATH '/Applications/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/OSX_x86/'

# Emscripten (WASM)
# set -g -x LLVM_ROOT '/Users/devnul/Job/emsdk/clang/fastcomp/build_incoming_64/bin'
# set -g -x NODE_JS '/Users/devnul/Job/emsdk/node/4.1.1_64bit/bin/node'
# set -g -x EMSCRIPTEN_ROOT '/Users/devnul/Job/emsdk/emscripten/incoming'
# set -g -x EMSCRIPTEN_NATIVE_OPTIMIZER '/Users/devnul/Job/emsdk/emscripten/incoming_64bit_optimizer/optimizer'
# set -g -x BINARYEN_ROOT '/Users/devnul/Job/emsdk/binaryen/master_64bit_binaryen'
# set -g -x SPIDERMONKEY_ENGINE ''
# set -g -x V8_ENGINE ''
# set -g -x TEMP_DIR '/var/folders/y4/hw0_h6js6s17jvnx_f8394p00000gn/T'
# set -g -x COMPILER_ENGINE NODE_JS
# set -g -x JS_ENGINES [NODE_JS]
# set -g -x EMSDK '/Users/devnul/Job/emsdk'
# set -g -x EM_CONFIG '/Users/devnul/.emscripten'
# set -g -x EMSCRIPTEN '/Users/devnul/Job/emsdk/emscripten/incoming'
#set -g -x PATH $PATH '/Users/devnul/Job/emsdk'
#set -g -x PATH $PATH '/Users/devnul/Job/emsdk/clang/fastcomp/build_incoming_64/bin'
#set -g -x PATH $PATH '/Users/devnul/Job/emsdk/node/4.1.1_64bit/bin'
#set -g -x PATH $PATH '/Users/devnul/Job/emsdk/emscripten/incoming'
#set -g -x PATH $PATH '/Users/devnul/Job/emsdk/binaryen/master'

####################################
# Переменные с использованием emsdk (legacy) (Вроде как стабильная версия: ./emsdk activate 1.38.48-fastcomp)
####################################
# set -g -x EMSDK_PATH '/Users/devnul/emsdk'
# set -g -x LLVM_ROOT '/Users/devnul/emsdk/fastcomp/fastcomp/bin'
# set -g -x BINARYEN_ROOT '/Users/devnul/emsdk/fastcomp'
# set -g -x EMSCRIPTEN_ROOT '/Users/devnul/emsdk/fastcomp/emscripten'
# set -g -x EMSCRIPTEN_NATIVE_OPTIMIZER '/Users/devnul/emsdk/fastcomp/bin/optimizer'
# set -g -x NODE_JS '/Users/devnul/emsdk/node/12.9.1_64bit/bin/node'
# set -g -x EMSCRIPTEN_PATH "/Users/devnul/emsdk/fastcomp/emscripten"
# set -g -x FASTCOMP_PATH "/Users/devnul/emsdk/fastcomp"
# set -g -x PVRCLI_PATH "/Applications/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/OSX_x86"
# set -g -x PATH $EMSCRIPTEN_PATH $EMSCRIPTEN_PATH/tools $PVRCLI_PATH $EMSDK_PATH/node/12.9.1_64bit/bin $PATH
# set -g -x LLVM $FASTCOMP_PATH
# set -g -x EMSCRIPTEN $EMSCRIPTEN_PATH

####################################
# Переменные с использованием emsdk (latest LLVM, раньше назывался upstream) (Вроде как стабильная версия: ./emsdk activate 1.38.48-upstream)
####################################
set -g -x EMSDK_PATH '/Users/devnul/emsdk'
set -g -x LLVM_ROOT "/Users/devnul/emsdk/upstream/bin"
set -g -x BINARYEN_ROOT "/Users/devnul/emsdk/upstream"
set -g -x EMSCRIPTEN_ROOT "/Users/devnul/emsdk/upstream/emscripten"
set -g -x EMSCRIPTEN_PATH "/Users/devnul/emsdk/upstream/emscripten"
set -g -x NODE_JS '/Users/devnul/emsdk/node/12.9.1_64bit/bin/node'
set -g -x FASTCOMP_PATH "/Users/devnul/emsdk/upstream/fastcomp"
set -g -x PVRCLI_PATH "/Applications/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/OSX_x86"
set -g -x PATH $EMSCRIPTEN_PATH $EMSCRIPTEN_PATH/tools $PVRCLI_PATH $EMSDK_PATH/node/12.9.1_64bit/bin $PATH 
set -g -x EMSCRIPTEN $EMSCRIPTEN_PATH

# GO
# set -g -x GOROOT '/Users/devnul/GoV1.9'
# set -g -x GOPATH '/Users/devnul/GoPath'
# set -g -x PATH $PATH '/Users/devnul/GoV1.9/bin'
# set -g -x PATH $PATH '/Users/devnul/GoPath/bin'

# Rust
set -g -x PATH /Users/devnul/.cargo/bin $PATH
set -g -x RUSTC_WRAPPER /usr/local/bin/sccache
set -g -x SCCACHE_DIR /Users/devnul/sccache
set -g -x SCCACHE_CACHE_SIZE "50G"

# Convert tools pathes test
# set -g -x PVR_TOOL_PATH '/Applications/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/OSX_x86/PVRTexToolCLI'
# set -g -x FFMPEG_TOOL_PATH '/usr/local/bin/ffmpeg'
# set -g -x WEBP_TOOL_PATH '/usr/local/bin/cwebp'

# Homebrew
# set -g -x HOMEBREW_GITHUB_API_TOKEN '10045e3126261333e044bf3fe41f5f13bde60fa9'

# Aliasses
alias gitplom='git pull origin master'
alias gitpshom='git push origin master'
alias gitst='git status'
alias gitadd="git add ."
alias gitcom='git commit -a -m'
alias piAtHome='ssh -R 52698:localhost:52698 devnulpavel.ddns.net'

# Deno
set -g -x DENO_INSTALL "/Users/devnul/.deno"
set -g -x PATH $DENO_INSTALL/bin $PATH

# XGEN
set -g -x XGEN_ENABLE_DISTCC false
set -g -x XGEN_ENABLE_CCACHE true
#set -g -x XGEN_XCODE_DEVELOPER_DIR "/Applications/Xcode.app/Contents/Developer/"
