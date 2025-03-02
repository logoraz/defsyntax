;;;; All general interfaces + common core of pure and stateful data structures

(uiop:define-package #:defsyntax/core/all
  (:use #:cl)
  (:nicknames #:defsyntax)
  (:use-reexport
   #:defsyntax/core/database
   #:defsyntax/core/defsyntax))
