{ pkgs, ... }: 
{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = ''$directory$username$git_branch
$character'';
      
      
      directory = {
        format = "[$path](bold green)[$read_only](bold red)";
        truncation_length = 3;
        truncate_to_repo = false;
      };
      
      username = {
        format = "[\\[$user\\]](bold #F067A6)";
        show_always = true;
      };

      git_branch = {
        format = "[\\(($branch)\\)](bold #65BBE9)";
        only_attached = false;
      };
      
      /*
			direnv = {
        disabled = false;
        format = "[$symbol$allowed](bold green)";
      };
			*/

			character = {
				success_symbol = "[❯](bold green)";
				error_symbol = "[❯](bold red)";
			};
    };
  };
}
