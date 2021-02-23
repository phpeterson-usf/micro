# micro
My tools for using the [micro editor](https://micro-editor.github.io/) in CS 315

1. `syntax/arm_asm.yaml` is a syntax file for ARMv7 assembly language. 
1. `plug/arm_asm/arm_asm.lua` is a plugin which tells micro to use arm_asm.yaml for files with the .s 
1. `plug/fmt/fmt.lua` uses a pretty-printer to format code by filetype
1. `colorschemes/xcodelike.micro` is a micro colorscheme for those who like light colors
1. `settings.json` sets the clipboard and tabstospaces as I prefer
1. `bindings.json` sets the keyboard bindings as I prefer (for Find and Find Again)

If you want these settings, or just to use them to start, you can
<pre><code>$ cd ~
$ mkdir -p .config/micro
$ cd .config/micro
$ git clone git@github.com:phpeterson-usf/micro
</code></pre>
