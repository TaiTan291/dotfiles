--行
vim.opt.number = true --行番号
vim.opt.relativenumber = true --相対行番号

--検索
vim.opt,smartcase = true --大文字がは入力に含まれるときのみ区別


--- ---------------
--- ファイルを読み込む
--- ---------------
vim.api.nvim_create_user_command(
	'InitLua',
	function()
		vim.cmd.edit(vim.fn.stdpath('config')..'/init.lua')
	end,
	{}
)
vim.api.nvim_create_user_command(
	'LazyLua',
	function()
		vim.cmd.edit(vim.fn.stdpath('config')..'/lua/config/lazy.lua')
	end,
	{}
)
