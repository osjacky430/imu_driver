set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(COMPILER_PATH   "/Users/osjacky430/Library/xPacks/@xpack-dev-tools/arm-none-eabi-gcc/8.3.1-1.1.1/.content/bin/")
set(COMPILER_PREFIX arm-none-eabi-)

set(CMAKE_C_COMPILER    ${COMPILER_PATH}${COMPILER_PREFIX}gcc)
set(CMAKE_CXX_COMPILER  ${COMPILER_PATH}${COMPILER_PREFIX}g++)
set(CMAKE_LINKER        ${COMPILER_PATH}${COMPILER_PREFIX}ld)
set(CMAKE_AR            ${COMPILER_PATH}${COMPILER_PREFIX}ar)
set(CMAKE_RANLIB        ${COMPILER_PATH}${COMPILER_PREFIX}ranlib)

set(STM32F4_FLAGS "-mfloat-abi=hard -mfpu=fpv4-sp-d16 -mthumb -mcpu=cortex-m4")
set(WARNING_FLAGS "-Wall -Wextra -Wimplicit-function-declaration -Wredundant-decls  \
                   -Wmissing-prototypes -Wstrict-prototypes -Wundef -Wshadow")
set(OPTIMIZATION_FLAGS "-fPIC -fno-common -ffunction-sections -fdata-sections")
set(NEWLIB_FLAGS "--specs=nano.specs --specs=nosys.specs")

set(CMAKE_C_FLAGS "${STM32F4_FLAGS} ${WARNING_FLAGS} -g" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "-fno-exceptions -fno-rtti ${STM32F4_FLAGS} -std=gnu++17 ${NEWLIB_FLAGS} -g" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${OPTIMIZATION_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)