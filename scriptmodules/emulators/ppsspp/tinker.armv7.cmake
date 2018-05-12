include_directories(SYSTEM
  /usr/local/include
  /usr/include
)

set(ARCH_FLAGS "-O2 -marm -march=armv7-a -mfpu=neon -mtune=cortex-a17 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations -pipe")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${ARCH_FLAGS}"  CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${ARCH_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${ARCH_FLAGS}" CACHE STRING "" FORCE)

#set(CMAKE_EXE_LINKER_FLAGS "-L/usr/lib/arm-linux-gnueabihf" CACHE STRING "" FORCE)
set(OPENGL_LIBRARIES GLESv2)
set(USING_GLES2 ON)
set(ARMV7 ON)
