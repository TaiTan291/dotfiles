{ pkgs, ... }:
{
	home.pointerCursor = {
    package = pkgs.breeze_cursors;
    name = "Ked-Plasma-cursors";
    size = 24;
    
    gtk.enable = true;
    x11.enable = true;
  };

  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.breeze_cursors;
      name = "Ked-Plasma-cursors";
    };
  };
}
