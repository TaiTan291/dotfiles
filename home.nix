#home manager
{ config, lib, pkgs, ...}:

{
	home = {
		stateVersion = "25.11";
		username = "taitan";
		homeDirectory = "/home/taitan";
		packages = with pkgs; [
			#editor
			emacs
			vscode
			
			#rust
			#rustc # compiler
			#cargo # package manager
			#rustfmt # code format
			#clippy # code linter

			#GUI(hyprland)
			kitty
			waybar
			hyprshot
			pavucontrol
			dunst
			playerctl
			starship
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
		sessionVariables = {
			QT_IM_MODULE = "fcitx";
			XMODIFIERS = "@im=fcitx";
		};
	
		file = {
			"Downloads/.keep".text = "";
			"Screenshots/.keep".text = "";
			"school/.keep".text = "";
			".skk-dict/user.dict".text = "";
			".skk-dict/SKK-JISYO.L".source = ./skk/SKK-JISYO.L;
			".skk-dict/SKK-JISYO.jinmei".source = ./skk/SKK-JISYO.jinmei;
			".skk-dict/SKK-JISYO.station".source = ./skk/SKK-JISYO.station;
			".bashrc".text = ''
				#tab補完
				complete -f -X '*.pdf' nvim emacs vim
				complete -f -X '*.typ' xdg-open
			
				#starship
				eval "$(starship init bash)"
			'';
		};
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
		./starship.nix
		./nvim
		./fcitx5
		#./homeFile.nix
	];
	programs.home-manager.enable = true; # home-manager
}
