#home manager
{ config, lib, pkgs, ...}:

{
	home = {
		stateVersion = "25.11";
		username = "taitan";
		homeDirectory = "/home/taitan";
		packages = with pkgs; [
			#editor
			neovim
			emacs
			vscode
			
			## dependence
			deno # denops.vim
			typst
			vimPlugins.typst-preview-nvim
			tinymist
			websocat # WebSocat

			#rust
			rustc # compiler
			cargo # package manager
			rustfmt # code format
			clippy # code linter

			#GUI(hyprland)
			kitty
			waybar
			hyprshot
			pavucontrol
			dunst
			playerctl
			##画面光度
			xorg.xbacklight
			brightnessctl
			##dolphin( File Manager )
			kdePackages.qtsvg
			kdePackages.kio
			kdePackages.kio-fuse
			kdePackages.kio-extras
			kdePackages.dolphin
			
			#browser
			brave
			
			#SNS
			discord
			discord-ptb
			slack
 		];
	};
	
	xdg.mimeApps = {
		enable = true;
		defaultApplications = {
			"text/html" = "brave.desktop";
			"x-scheme-handler/http" = "brave.desktop";
			"x-scheme-handler/https" = "brave.desktop";
		};
	};

	programs.wofi = {
		enable = true;
	};

	imports = [
		./hyprland.nix
		./waybar.nix
		./git.nix
		./homeFile.nix
	];
	programs.home-manager.enable = true; # home-manager
}
