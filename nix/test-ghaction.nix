{ lib
, mkCoqDerivation
, coq
, autosubst
}:

mkCoqDerivation {
  pname = "test-ghaction";
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
