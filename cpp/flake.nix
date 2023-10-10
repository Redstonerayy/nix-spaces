{
  description = "A very basic flake";

  outputs = { self, nixpkgs }:

    let 
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
    
    in {
        devShells.${system}.default = pkgs.mkShell {
            buildInputs = with pkgs; [
                boost
                cmake
            ];
        };
    };
}
