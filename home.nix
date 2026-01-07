#home manager
{ config, lib, pkgs, ...}:

{
	home = {
		stateVersion = "25.11";
		username = "taitan";
		homeDirectory = "/home/taitan";
		packages = with pkgs; [
			#home-manager
			bat
			bottom
			httpie
			pingu
			ripgrep
			

			#user app
			discord
			discord-ptb
			slack
 		];
	};
	
	xdg.mimeApps = {
		enable = true;
		defaultApplications = {
			"text/html" = "firefox.desktop";
			"x-scheme-handler/http" = "firefox.desktop";
			"x-scheme-handler/https" = "firefox.desktop";
		};
	};

	imports = [
		./hyprland.nix
		./waybar.nix
		./git.nix
		./fileConfig.nix
		./fileHome.nix
	];
	programs.home-manager.enable = true; # home-manager
}
