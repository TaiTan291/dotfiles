{ pkgs, inputs, ... }:
let
	skkeleton = pkgs.vimUtils.buildVimPlugin {
    name = "skkeleton";
		src = pkgs.fetchFromGitHub {
      owner = "vim-skk";
      repo = "skkeleton";
			ver = 2.0.0;
			sha256 = "954f2f96e74a0c409f12315278fb1bbef0286b60954f2f96e74a0c409f12315278fb1bbef0286b60";
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
		extraLuaConfig = ''
			require("options")
			require("skkeleton")
		'';
	};

	xdg.configFile = {
		"nvim/lua/options.lua".source = ./lua/options.lua;
		"nvim/lua/skkeleton.lua".source = ./lua/skkeleton.lua;
	};
}
