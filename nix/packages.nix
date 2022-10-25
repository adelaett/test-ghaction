{ coqPackages }:

coqPackages.overrideScope' (
  self: super: {
    test-ghaction = self.callPackage ./test-ghaction.nix { };
})
