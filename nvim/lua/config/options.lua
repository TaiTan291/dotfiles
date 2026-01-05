--行
vim.opt.number = true --行番号
vim.opt.relativenumber = true --相対行番号

--検索
vim.opt.smartcase = true --大文字がは入力に含まれるときのみ区別

--tabの空白
vim.opt.tabstop = 2 --tab文字の表示幅
vim.opt.softtabstop = 2 --tabの空白の数
vim.opt.shiftwidth = 2 --自動インシデントの空白数


--vim.opt.wildignore:append("*.pdf") --Tab補完の除外

--- ---------------
--- ファイルを読み込む
--- ---------------
vim.api.nvim_create_user_command(
	'LazyLua',
	function()
		vim.cmd.edit(vim.fn.stdpath('config')..'/lua/config/lazy.lua')
	end,
	{}
)
