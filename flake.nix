{
  description = "Java Spring Boot development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          jdk25
          maven
          git
        ];

        shellHook = ''
          echo "Java Spring Boot development environment"
          java --version
          mvn --version
        '';
      };
    };
}
