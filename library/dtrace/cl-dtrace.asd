(defsystem #:cl-dtrace
  :description "DTRACE - portable alternative to TRACE & UNTRACE."
  :class :package-inferred-system
  :defsystem-depends-on (:asdf-package-system)
  :depends-on ("cl-dtrace/dtrace"))
