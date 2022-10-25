{ coqPackages }:

coqPackages.overrideScope' (
  self: super: {
    coqtest = self.callPackage ./coqtest.nix { };
})
