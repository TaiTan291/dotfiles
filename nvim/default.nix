{ pkgs, inputs, ... }:
let
	skkeleton = pkgs.vimUtils.buildVimPlugin {
    name = "skkeleton";
		src = pkgs.fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
			rev = "2.0.0";
			sha256 = "sha256-PRYm015GqZ0JPIbsFG29Q89M4BDE9sG9Le/UakiaWEE="; 
		};
  };

in
{
	programs.neovim = {
		enable = true;
		viAlias = true;
		vimAlias = true;
		defaultEditor = true;
		plugins = with pkgs.vimPlugins; [
			#skk
			skkeleton
			#deno
			denops-vim
			#cmp
			#LSP
			nvim-lspconfig
			#typst
			typst-preview-nvim
		];
		extraPackages = with pkgs; [
			deno
			typst
			tinymist
		];
		extraLuaConfig = ''
			require("options")
			require("skkeleton")
			require("lsp")
			require("typst")
		'';
	};

	xdg.configFile = {
		"nvim/lua/options.lua".source = ./lua/options.lua;
		"nvim/lua/skkeleton.lua".source = ./lua/skkeleton.lua;
		"nvim/lua/lsp.lua".source = ./lua/lsp.lua;
		"nvim/lua/typst.lua".source = ./lua/typst.lua;
	};
}
