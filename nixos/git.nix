{pkgs, ...} {
	programs = {
		git = {
			enable = true;
			userName = "TaiTan291";
		};
		ssh = {
			enable = true;
			startAgent = true;
			matchBlocks = {
				"github.com" = {
					hostname = "github.com";
					user = "TaiTan291";
				};
			};
		};
	};

}
