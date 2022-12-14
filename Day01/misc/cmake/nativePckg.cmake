# Copyright © 2022  Neeraj Singhal
# All rights reserved

message(STATUS "    CMake: ${CMAKE_VERSION} (${CMAKE_COMMAND})")

find_program(GIT_TOOL NAMES git)
execute_process(
  COMMAND ${GIT_TOOL} --version
  OUTPUT_VARIABLE GIT_TOOL_VERSION
  ERROR_VARIABLE GIT_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" GIT_TOOL_VERSION "${GIT_TOOL_VERSION}")
message(STATUS "    Git: ${GIT_TOOL_VERSION} (${GIT_TOOL})")

find_program(GCC_TOOL NAMES g++-HEAD g++-11 g++-latest g++)
execute_process(
  COMMAND ${GCC_TOOL} --version
  OUTPUT_VARIABLE GCC_TOOL_VERSION
  ERROR_VARIABLE GCC_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" GCC_TOOL_VERSION "${GCC_TOOL_VERSION}")
message(STATUS "    GCC: ${GCC_TOOL_VERSION} (${GCC_TOOL})")

find_program(CLANG_TOOL NAMES clang++-HEAD clang++-14 clang++-13 clang++-12
                              clang++-11 clang++)
execute_process(
  COMMAND ${CLANG_TOOL} --version
  OUTPUT_VARIABLE CLANG_TOOL_VERSION
  ERROR_VARIABLE CLANG_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" CLANG_TOOL_VERSION
             "${CLANG_TOOL_VERSION}")
message(STATUS "    Clang: ${CLANG_TOOL_VERSION} (${CLANG_TOOL})")

find_program(CLANG_TIDY_TOOL NAMES clang-tidy-14 clang-tidy-13 clang-tidy-12
                                   clang-tidy-11 clang-tidy)
execute_process(
  COMMAND ${CLANG_TIDY_TOOL} --version
  OUTPUT_VARIABLE CLANG_TIDY_TOOL_VERSION
  ERROR_VARIABLE CLANG_TIDY_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" CLANG_TIDY_TOOL_VERSION
             "${CLANG_TIDY_TOOL_VERSION}")
message(STATUS "    Clang-Tidy: ${CLANG_TIDY_TOOL_VERSION} (${CLANG_TIDY_TOOL})")

find_program(CPPCHECK_TOOL NAMES cppcheck)
execute_process(
  COMMAND ${CPPCHECK_TOOL} --version
  OUTPUT_VARIABLE CPPCHECK_TOOL_VERSION
  ERROR_VARIABLE CPPCHECK_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" CPPCHECK_TOOL_VERSION
             "${CPPCHECK_TOOL_VERSION}")
message(STATUS "    Cppcheck: ${CPPCHECK_TOOL_VERSION} (${CPPCHECK_TOOL})")

find_program(GCOV_TOOL NAMES gcov-HEAD gcov-11 gcov-10 gcov)
execute_process(
  COMMAND ${GCOV_TOOL} --version
  OUTPUT_VARIABLE GCOV_TOOL_VERSION
  ERROR_VARIABLE GCOV_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" GCOV_TOOL_VERSION
             "${GCOV_TOOL_VERSION}")
message(STATUS "    GCOV: ${GCOV_TOOL_VERSION} (${GCOV_TOOL})")

find_program(LCOV_TOOL NAMES lcov)
execute_process(
  COMMAND ${LCOV_TOOL} --version
  OUTPUT_VARIABLE LCOV_TOOL_VERSION
  ERROR_VARIABLE LCOV_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" LCOV_TOOL_VERSION
             "${LCOV_TOOL_VERSION}")
message(STATUS "    LCOV: ${LCOV_TOOL_VERSION} (${LCOV_TOOL})")

find_program(NINJA_TOOL NAMES ninja)
execute_process(
  COMMAND ${NINJA_TOOL} --version
  OUTPUT_VARIABLE NINJA_TOOL_VERSION
  ERROR_VARIABLE NINJA_TOOL_VERSION)
string(REGEX MATCH "[0-9]+(\\.[0-9]+)+" NINJA_TOOL_VERSION
             "${NINJA_TOOL_VERSION}")
message(STATUS "    Ninja: ${NINJA_TOOL_VERSION} (${NINJA_TOOL})")

# find_program(XXX_TOOL NAMES xxx) execute_process(COMMAND ${XXX_TOOL} --version
# OUTPUT_VARIABLE XXX_TOOL_VERSION ERROR_VARIABLE XXX_TOOL_VERSION) string(REGEX
# MATCH "[0-9]+(\\.[0-9]+)+" XXX_TOOL_VERSION "${XXX_TOOL_VERSION}")
# message(STATUS "  XXX ${XXX_TOOL_VERSION} (${XXX_TOOL})")
