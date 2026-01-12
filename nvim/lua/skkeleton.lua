local function setup_skk()
	vim.keymap.set({"i","n","c"},"<C-j>","<Plug>(skkeleton-enable)")
	vim.keymap.set("i","<Esc>","<Plug>(skkeleton-disable)<Esc>")
	

	-- "<Plug>(skkeleton-disable)
	vim.fn["skkeleton#config"]({
		globalDictionaries = {
			"~/.skk_dict/SKK-JISYO.L",
			"~/.skk_dict/SKK-JISYO.jinmei",
			"~/.skk_dict/SKK-JISYO.station",
			eggLikeNewline = true,
		},
		userDictionary = vim.fn.expand("~/.skk_dict/user.dict"),
	})
end
