---------------------------------------------------------------------------
-- @author 
-- @copyright 2019
---------------------------------------------------------------------------

local beautiful = require("beautiful")

describe("beautiful init", function()
    local shimmed = {}

    setup(function()
        local root = (os.getenv("SOURCE_DIRECTORY") or '.') .. "/spec/menubar"

        local function shim(name, retval)
            shimmed[name] = glib[name]
            glib[name] = function() return retval end
        end
    end)

    teardown(function()
        for name, func in pairs(shimmed) do
            glib[name] = func
        end
    end)

    -- Check for no argument :: if not icon_file or icon_file == "" then
    it('no icon specified', function()
    end)
end)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
