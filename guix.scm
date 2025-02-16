;; GNU Guix development manifest. To start the Guile REPL:
;;
;;   guix shell -m path/to/guix.scm -- sbcl
;;

(use-modules (guix packages)
             (gnu packages lisp)
             (gnu packages lisp-xyz))

(packages->manifest
 (list ccl
       cl-hunchentoot
       cl-easy-routes
       cl-djula))
