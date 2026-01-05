{ config, pkgs, ... }:
{
	home.file = {
		"Downloads/.keep".text = "";
		"Screenshots/.keep".text = "";
		"school/.keep".text = "";
		".skk-doct/user.dict".text = "";
		".skk-doct/golobal.keep".text = "";
		".bashrc".text = ''
			alias nvim='nvim --cmd "set wildignore+=*.pdf"'
		'';
	};
}
