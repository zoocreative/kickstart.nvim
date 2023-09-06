return {
	"windwp/nvim-autopairs",
	--Optional dependency
	dependencies = { 'hrsh7th/nvim-cmp' },
	config = function()
		require("nvim-autopairs").setup{}
		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
		local cmp = require('cmp')
		cmp.event:on(
			'config_done',
			cmp_autopairs.on_confirm_done()
		)
	end,
}
