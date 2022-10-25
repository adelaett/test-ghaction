(lang dune 2.8)
(using coq 0.3)
(name coq-coqtest)
(generate_opam_files true)

(package
 (name coq-coqtest)
 (synopsis "Coq test with gh actions")
 (depends coq-core))
