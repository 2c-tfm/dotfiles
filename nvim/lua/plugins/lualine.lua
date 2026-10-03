return {
    {
	'nvim-lualine/lualine.nvim',
	options = { theme = 'nightfly' },
	config = function() 
	    require("lualine").setup()
	end
    },
}
