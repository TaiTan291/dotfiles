{ pkgs, config, ... }:
{
	xdg.configFile = {
		"fcitx5/profile".source = ./profile;
		"fcitx5/config".source = ./config;
		"fcitx5/conf/notifications.conf".source = ./conf/notifications.conf;
		"fcitx5/conf/skk.conf".source = ./conf/skk.conf;
	};
}
