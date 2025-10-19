{
    description = "My nvf configuration";
    
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nvf.url = "github:NotAShelf/nvf";
    };
    
    outputs = { self, nixpkgs, nvf, ... }:
    {
        homeManagerModules.default = { ... }: {
            imports = [
                nvf.homeManagerModules.default
                ./default.nix
            ];
        };

        nixosModules.default = { ... }: {
            imports = [
                nvf.nixosModules.default
                ./default.nix
            ];
        };
    };
}

