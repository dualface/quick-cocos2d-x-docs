
## io.writefile()

> io.writefile(path, content, mode)

Write a string to a file, or return FALSE on failure.


### Parameters

-   string **path**
-   string **content**
-   string **mode**

### Returns

-   boolean

### Note:
The mode string can be any of the following:
    "r": read mode
    "w": write mode;
    "a": append mode;
    "r+": update mode, all previous data is preserved;
    "w+": update mode, all previous data is erased; (the default);
    "a+": append update mode, previous data is preserved, writing is only allowed at the end of file.
