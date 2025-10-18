{
    description = "My nvf configuration";
    
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nvf.url = "github:NotAShelf/nvf";
    };
    
    outputs = { self, nixpkgs, flake-utils, nvf, ... }:
    {
        nixosModules.default = { ... }: {
            imports = [
                nvf.nixosModules.default
                ./default.nix
            ];
        };
    };
}

