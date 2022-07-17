function onBufferOpen(b)
	local ft = b:FileType()

	if ft == "asm" then
        -- if string.find(b:Line(0), "@! armv7") then
            -- b:SetOption("filetype", "arm_asm")
        if string.find(b:Line(0), "#! riscv") then
            b:SetOption("filetype", "riscv")
        end
	end
end
