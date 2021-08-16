#### title: tempfile.R ####
#### v: 2021-08-12T1953 AU


#### write files to temp dir ####
dir <- tempfile()
dir.create(dir)
writeBin(1L, file.path(dir, "file1"))
writeBin(2L, file.path(dir, "file2"))
dir.create(file.path(dir, "dir"))

#### see file: <tempfile_screenshot.png>