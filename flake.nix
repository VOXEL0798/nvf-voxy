{
    description = "My nvf configuration";
    
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        nvf.url = "github:NotAShelf/nvf";
    };
    
    outputs = { self, nixpkgs, flake-utils, nvf, ... }:
    let
        imports = [
            nvf.homeManagerModules.default
            ./default.nix
        ];
    in
    {
        homeManagerModules.default = { ... }: {
            inherit imports;
        };

        nixosModules.default = { ... }: {
            inherit imports;
        };
    };
}
