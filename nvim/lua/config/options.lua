local options = {
	autocomplete=false,	-- atm we don't want to auto complete
	autoindent=true,	-- my pinky is weak
	autoread=true,		-- i really wanna see what the russian hacker is doing on my machine
	background="dark",	-- really scared of light
	backup=true,		-- i really fuck it up sometimes, might as well backupnames of fingers song
	backupdir="/tmp",	-- laptop tunerd off, you're fucked 
	backupext=".nvim.bak",	-- backup ext in /tmp
	casemap="internal",	-- wont be using utf-8 anytime soon
	cindent=true,
	clipboard="unnamedplus",
	cmdheight=0,
	confirm=false,
	conceallevel = 0,
	copyindent=true,
	title=true,
	fileencoding = "utf-8",
	ignorecase=true,
	hlsearch = true,
	termguicolors=true,
	wrap = true,
	number = true,
	numberwidth = 4, 		-- ok?
	showcmd = false,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	undofile = true,
	scrolloff = 8,
	sidescrolloff = 8, 
	splitkeep = "cursor",
	switchbuf = "uselast",
	timeoutlen = 200,
}

for k,v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.fillchars:append({ eob = " " })
