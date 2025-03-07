;;; Notes
;;; How to set up The Package Defferred System
;;; * https://asdf.common-lisp.dev/asdf/\
;;;   The-package_002dinferred_002dsystem-extension.html
;;;
;;; * https://github.com/fare/lisp-interface-library/
;;;
;;; * https://lispcookbook.github.io/cl-cookbook/testing.html
;;;
;;; * https://web-apps-in-lisp.github.io/tutorial/getting-started/index.html

#-asdf3.1 (error "SWACL requires ASDF 3.1.2 or later.")

(defsystem #:defsyntax
  :description "A Simple Web Application written in Common Lisp."
  :author "Erik Almaraz <erikalmaraz@fastmail.com>"
  :license "BSD-3 Clause"
  :version "0.0.1"
  :class :package-inferred-system
  :depends-on ("iterate"
               "hunchentoot"
               "easy-routes"
               "djula"
               "defsyntax/core/all"
               "defsyntax/library/learn/all")
  :in-order-to ((test-op (test-op "defsyntax/tests"))))


(defsystem "defsyntax/tests"
  :depends-on ("rove"
               "defsyntax/tests/all")
  :perform (test-op (o c) (symbol-call #:defsyntax/tests/all #:run-all-tests)))


(register-system-packages "defsyntax/core/all" '(#:defsyntax))
(register-system-packages "defsyntax/library/learn/all" '(#:learn))
(register-system-packages "defsyntax/tests/all" '(#:tests))

(register-system-packages
 "closer-mop"
 '(:c2mop :closer-common-lisp :c2cl :closer-common-lisp-user :c2cl-user))
