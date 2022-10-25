{ lib
, mkCoqDerivation
, coq
, autosubst
}:

mkCoqDerivation {
  pname = "coqtest";
  src = ../.;
  useDune = true;

  version = "0.1.0";

  propagatedBuildInputs = [
    autosubst
  ];

  meta = {
    description = "";
  };
}
