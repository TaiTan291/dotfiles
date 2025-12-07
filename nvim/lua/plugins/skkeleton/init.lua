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
			vim.fn["skkeleton#config"]({
				globalDictionaries = {
					"/usr/share/skk/SKK-JISYO.L",
					"/usr/share/skk/SKK-JISYO.jinmei",
					"/usr/share/skk/SKK-JISYO.fullname",
					"/usr/share/skk/SKK-JISYO.geo",
					"/usr/share/skk/SKK-JISYO.propernoun",
					"/usr/share/skk/SKK-JISYO.station",
					"/usr/share/skk/SKK-JISYO.law",
					"/usr/share/skk/SKK-JISYO.okinawa",
					"/usr/share/skk/SKK-JISYO.china_taiwan",
					"/usr/share/skk/SKK-JISYO.assoc",
					"/usr/share/skk/SKK-JISYO.JIS2",
					"/usr/share/skk/SKK-JISYO.JIS3_4",
					"/usr/share/skk/SKK-JISYO.JIS2004",
					"/usr/share/skk/SKK-JISYO.itaiji",
					"/usr/share/skk/SKK-JISYO.itaiji.JIS3_4",
					"/usr/share/skk/SKK-JISYO.mazegaki",
					"/usr/share/skk/SKK-JISYO.lisp",
				},
				userDictionary = vim.fn.expand("~/.local/share/fcitx5/skk/user.dict"),
			})
		end,
	},
}
