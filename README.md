Мой конфиг 'nvf' для NixOS на базе флейка

- Как его добавить в свою систему;
```nix
let
    system = "x86_64-linux";
    username = "username"; #change this `username` to your username
    hostname = "nixos"; #change this `nixos` to your hostname
in {
  description = "Flake.nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nvf-custom.url = "github:VOXEL0798/nvf-voxy";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nvf-custom,
    home-manager,
    nixpkgs,
    ...
  }: {
    #for home-manager
    homeConfigurations = {
      ${username} = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {inherit system;};
        modules = [
          nvf-custom.homeManagerModules.default
          ./home.nix
        ];
      };
    };
  };

  #for nixos configuration
  nixosConfigurations = {
    ${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          nvf-custom.homeManagerModules.default
          ./configuration.nix
        ];
      };
    };
  };
}

```
Далее ничего делать не нужно, флейк сам установится при пересборке системы и будет использоваться в вашем neovim`е

