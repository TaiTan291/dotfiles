#home manager
{ config, lib, pkgs, ...}:

{
	home = {
		username = "taitan";
		homeDirectory = "/home/taitan";
		stateVersion = "24.11";
	};

	programs.home-manager.enable = true; # home-manager
	programs.kitty.enable = true; # kitty
	wayland.windowManager.hyprland.enable = true; # Wayland
}
