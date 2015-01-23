-- Test if a file exists
local function file_exists(name)
    local f=io.open(name, "r")
    if f~=nil
        then io.close(f)
        return true
    end

    return false
end

-- Given a base filename and extension, this function appends a sequential
-- number for to produce a unique filename.
--
function unique_filename(basename, ext)
    local num = 0
    while file_exists(basename .. '_' .. num .. '.' .. ext) do
        num = num + 1
    end

    return basename .. '_' .. num .. '.' .. ext
end
