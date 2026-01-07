{ config, pkgs, ... }:
{
	home.file = {
		"Downloads/.keep".text = "";
		"Screenshots/.keep".text = "";
		"school/.keep".text = "";
		".skk-doct/user.dict".text = "";
		".skk-doct/golobal.keep".text = "";
		".bashrc".text = ''
			complete -f -X '*.pdf' nvim emacs vim
			complete -f -X '*.typ' xdg-open
		'';
	};
}
