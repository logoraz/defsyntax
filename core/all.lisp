;;;; All general interfaces + common core of pure and stateful data structures

(uiop:define-package #:defsyntax/core/all
  (:nicknames #:defsyntax)
  (:use #:cl)
  (:use-reexport
   #:defsyntax/core/templates
   #:defsyntax/core/models
   #:defsyntax/core/routes
   #:defsyntax/core/defsyntax))
