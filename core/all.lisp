;;;; All general interfaces + common core of pure and stateful data structures

(uiop:define-package :deflux/core/all
  (:nicknames :deflux)
  (:use :cl)
  (:use-reexport
   :deflux/core/database
   :deflux/core/swacl))
