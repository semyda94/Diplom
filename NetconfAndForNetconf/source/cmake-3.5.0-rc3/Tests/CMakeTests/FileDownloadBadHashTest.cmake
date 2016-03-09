set(url "file:///Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/Users/SemykinDmitriy/Desktop/Diplom/NetconfAndForNetconf/source/cmake-3.5.0-rc3/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
