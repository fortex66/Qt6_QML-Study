# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appEx_02_QML_Basic_Example_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appEx_02_QML_Basic_Example_autogen.dir\\ParseCache.txt"
  "appEx_02_QML_Basic_Example_autogen"
  )
endif()
