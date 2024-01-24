local micro = import("micro")
local shell = import("micro/shell")

function fmt(bp, cmd)
	bp:Save()
	local _, err = shell.RunCommand(cmd .. bp.Buf.Path)
	if err ~= nil then
		micro.InfoBar():Error(err)
		return
	end
	bp.Buf:ReOpen()
end

function onSave(bp)
    ft = bp.Buf:FileType()
	if ft == "rust" then
		fmt(bp, "rustfmt ")
	elseif ft == "go" then
	    fmt(bp, "go fmt ") 
	end
	return true
end
