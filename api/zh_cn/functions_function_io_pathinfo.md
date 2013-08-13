
## io.pathinfo()

> io.pathinfo(path)

Returns information about a file path.

**Usage:**

    local path = "/var/app/test/abc.png"
    local pathinfo  = io.pathinfo(path)
    -- pathinfo.dirname  = "/var/app/test/"
    -- pathinfo.filename = "abc.png"
    -- pathinfo.basename = "abc"
    -- pathinfo.extname  = ".png"



### Parameters

-   string **path**

### Returns

-   table
