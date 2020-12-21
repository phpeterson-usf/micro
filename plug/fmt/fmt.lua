local micro = import("micro")
local shell = import("micro/shell")

function rustfmt(bp)
	bp:Save()
	local _, err = shell.RunCommand("rustfmt " .. bp.Buf.Path)
	if err ~= nil then
		micro.InfoBar():Error(err)
		return
	end
	bp.Buf:ReOpen()
end

function onSave(bp)
	if bp.Buf:FileType() == "rust" then
		rustfmt(bp)
	end
	return true
end
