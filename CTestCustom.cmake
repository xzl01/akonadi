# This file contains all the specific settings that will be used
# when running 'make Experimental'

# Change the maximum warnings that will be displayed
# on the report page (default 50)
set(CTEST_CUSTOM_MAXIMUM_NUMBER_OF_WARNINGS 1000)

# Errors that will be ignored
set(CTEST_CUSTOM_ERROR_EXCEPTION
  ${CTEST_CUSTOM_ERROR_EXCEPTION}
  "ICECC"
  "Segmentation fault"
  "GConf Error"
  "Client failed to connect to the D-BUS daemon"
  "Failed to connect to socket"
  "qlist.h.*increases required alignment of target type"
  "qmap.h.*increases required alignment of target type"
  "qhash.h.*increases required alignment of target type"
  )

# No coverage for these files (auto-generated, unit tests, etc)
set(CTEST_CUSTOM_COVERAGE_EXCLUDE ".moc$" "moc_" "ui_" "/tests" "/autotests" "qrc_" "adaptor.h$" "adaptor.cpp$" "/src/server/[^/]+interface\\.")
