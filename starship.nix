{ pkgs, ... }: 
{
	#xdg.configFile."starship.toml".source = ./starship.toml;
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$username[@](bold green)$hostname[:](bold green)$directory$git_branch$direnv[\\$ ](bold green)";
      
      username = {
        format = "\\[[$user](bold green)";
        show_always = true;
      };
      
      hostname = {
        format = "[$hostname](bold green)";
        ssh_only = false;
      };
      
      directory = {
        format = "[$path](bold green)[$read_only](bold red)\\]";
        truncation_length = 3;
        truncate_to_repo = false;
      };
      
      git_branch = {
        format = "[\\(($branch)\\)](bold #65BBE9)";
        only_attached = false;
      };
      
      direnv = {
        disabled = false;
        format = "[$symbol$allowed](bold green)";
      };
    };
  };
}
