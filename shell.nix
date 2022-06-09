{pkgs ? import <nixpkgs> {}}: 

pkgs.mkShell {
  buildInputs = 
    with pkgs.haskell.packages.ghc902; 
    with pkgs; 
    #[ghc watchexec];
    [ghc ];
}
