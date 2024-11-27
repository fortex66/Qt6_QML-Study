# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appEx_00_Hello_World_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appEx_00_Hello_World_autogen.dir\\ParseCache.txt"
  "appEx_00_Hello_World_autogen"
  )
endif()
