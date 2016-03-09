# CMake generated Testfile for 
# Source directory: /Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Tests/CMakeLib
# Build directory: /Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Tests/CMakeLib
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(CMakeLib.testGeneratedFileStream "CMakeLibTests" "testGeneratedFileStream")
add_test(CMakeLib.testRST "CMakeLibTests" "testRST" "/Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Tests/CMakeLib")
add_test(CMakeLib.testSystemTools "CMakeLibTests" "testSystemTools")
add_test(CMakeLib.testUTF8 "CMakeLibTests" "testUTF8")
add_test(CMakeLib.testXMLParser "CMakeLibTests" "testXMLParser")
add_test(CMakeLib.testXMLSafe "CMakeLibTests" "testXMLSafe")
subdirs(PseudoMemcheck)
