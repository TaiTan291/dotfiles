{ pkgs, ... }:
{
	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		defaultEditor = true;
		plugins = with pkgs.vimPlugins; [
			#deno
			denops-vim
			#skk
			skkeleton
			#LSP
			#nvim-lspconfig
			#mason-nvim
			#mason-lspconfig-nvim
		];
		extraPackages = with pkgs; [
			deno
			#typst
			#tinymist
		];
			#require("skkeleton")
			#"nvim/lua/skkeleton.lua".source = ./lua/skkeleton.lua;

		extraLuaConfig = ''
			require("options")
		'';
	};

	xdg.configFile = {
		"nvim/lua/options.lua".source = ./lua/options.lua;
	};
}
