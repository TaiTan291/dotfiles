{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		hyprland.url = "github:hyprwm/Hyprland";
	};


	outputs = { self, nixpkgs, home-manager, ...} @ inputs: {
		nixosConfigurations.taitan = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				./configuration.nix
				home-manager.nixosModules.home-manager
				{
					home-manager = {
						useGlobalPkgs = true;
						useUserPackages = true;
						users.taitan = import ./home.nix;
						extraSpecialArgs = { inherit inputs; };
						backupFileExtension = "bkup";
					};
				}
			];
		};
	};
}
