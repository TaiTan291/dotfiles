return{
	{
		"Shougo/dcc.vim",
		enable = true,
		lazy = false,
		dependencies = {
			"vim-denops/denops.vim" --依存
			"2Shougo/ddc-ui-native", --ui
      "Shougo/ddc-source-around", --補完ソース
      --"Shougo/ddc-source-lsp", --groubal補完ソース
      --"tani/ddc-fuzzy", --検索
      --"Shougo/ddc-filter-matcher_head", --検索
      "Shougo/ddc-filter-sorter_rank", --ランク付け
		}
	},
	config = function()
		vim.fn["ddc#custom#patch_global"]('ui', 'native')
		--filterParams/Optionsを見る
		vim.fn["ddc#custom#patch_global"]({
			sources, {
				{
					name = "around",
					option = {
						matchers = {"matcher_fuzzy"},
						mark = "[around]",
					},
					params = {},
				},
			}

			sourceOptions, {
				_ = {
					sorters = {'sorter_rank'}, --入れ替えソートの指定
					ignoreCase = true, --大文字小文字の区別
					minAutoCompleteLength = 2,
				},
			}

			--コマンドlineで
			cmdlineSources, {
			[":"] = { "cmdline-history", 'cmdline', 'around'},
			["@"] = { "cmdline-history", "input", "file", "around"},
		  [">"] = { "amdline-history", "input", "file", "around"},
		  ["/"] = { "around", 'line'},
		  ["?"] = { "around", 'line'},
		  ["-"] = { "around", 'line'},
		  ["="] = {"input"},
			}
		})

		vim.fn["ddc#custom#patch_global"]({
			autoCompleteDelay = 0, --遅延入力 defult=0
			
			--自動補完を起動するイベント 以下defult
			--autoCompleteEvent = "InsertEnter", "TextChangedI", "TextChangedP" 
			backspaceCompletion = v=false,

		})

		vim.fn["ddc#enable"]()
	end,
}
