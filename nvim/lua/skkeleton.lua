local function setup_skk()
	keys = {
		{ "<C-j>", mode = {"i","n","c"} },
	},
	vim.keymap.set({"i","n","c"},"<C-j>","<Plug>(skkeleton-enable)")
	vim.fn["skkeleton#config"]({
		globalDictionaries = {
			"~/.skk_dict/SKK-JISYO.L",
			"~/.skk_dict/SKK-JISYO.jinmei",
			"~/.skk_dict/SKK-JISYO.station",
		},
		userDictionary = vim.fn.expand("~/.skk_dict/user.dict"),
	})
end,
