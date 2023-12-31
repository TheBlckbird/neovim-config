local M = {}

local function getOS()
	-- ask LuaJIT first
	if jit then
		return jit.os
	end

	-- Unix, Linux variants
	local fh, err = assert(io.popen("uname -o 2>/dev/null", "r"))
	if fh then
		Osname = fh:read()
	end

	return Osname or "Windows"
end

function M.play(sound_file)
	vim.schedule(function()
		local command = ""
		if getOS() == "OSX" then
			command = "afplay"
		elseif getOS() == "Linux" then
			command = "play"
		else
			return
		end

		command = command .. " " .. sound_file .. " &"

		os.execute(command)
	end)
end

return M
