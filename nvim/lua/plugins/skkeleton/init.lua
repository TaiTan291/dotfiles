return{
    {
		"vim-skk/skkeleton",
		enabled = true,
		lazy = false,
		dependencies = {"vim-denops/denops.vim"},
		keys = {
			{ "<C-j>", mode = {"i","n","c"} },
		},
		config = function()
			vim.keymap.set({"i","n","c"},"<C-j>","<Plug>(skkeleton-enable)")
			--vim.keymap.set({"i","n","c"},"<ESC>",function()
			--	vim.fn["skkeleton#handle"]("disable", "")
			--	return "<ESC>"
			--end, { expr = true, silent = true })

			vim.fn["skkeleton#config"]({
				globalDictionaries = {
					"~/skk_dict/global-dict/SKK-JISYO.L.unannotated",
					"~/skk_dict/global-dict/SKK-JISYO.fullname",
					"~/skk_dict/global-dict/SKK-JISYO.jinmei",
					"~/skk_dict/global-dict/SKK-JISYO.propernoun",
					"~/skk_dict/global-dict/SKK-JISYO.station",
				},
				userDictionary = vim.fn.expand("~/skk-dict/user.dict"),
			})
		end,
	},
}
