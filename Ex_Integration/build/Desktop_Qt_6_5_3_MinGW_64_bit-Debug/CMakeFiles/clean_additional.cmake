# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appEx_Integration_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appEx_Integration_autogen.dir\\ParseCache.txt"
  "appEx_Integration_autogen"
  )
endif()
