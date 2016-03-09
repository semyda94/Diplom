# CMake generated Testfile for 
# Source directory: /Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Utilities/cmcurl
# Build directory: /Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Utilities/cmcurl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(curl "LIBCURL" "http://open.cdash.org/user.php")
subdirs(lib)
