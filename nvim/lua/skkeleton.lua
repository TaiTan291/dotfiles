return{
    {
		keys = {
			{ "<C-j>", mode = {"i","n","c"} },
		},
		config = function()
			vim.keymap.set({"i","n","c"},"<C-j>","<Plug>(skkeleton-enable)")
			vim.fn["skkeleton#config"]({
				globalDictionaries = {
					"~/.skk_dict/global-dict/SKK-JISYO.L",
					"~/.skk_dict/global-dict/SKK-JISYO.jinmei",
					"~/.skk_dict/global-dict/SKK-JISYO.station",
				},
				userDictionary = vim.fn.expand("~/skk-dict/user.dict"),
			})
		end,
	},
}
