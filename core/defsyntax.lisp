(defpackage #:defsyntax/core/defsyntax
  (:use #:cl
        #:defsyntax/core/templates
        #:defsyntax/core/models
        #:defsyntax/core/routes)
  (:export #:start-server
           #:stop-server))
(in-package #:defsyntax/core/defsyntax)


;; Parameters
(defparameter *port* 8899 "The application port.")

;; Internal variables
(defvar *server* nil
  "Server instance (Hunchentoot acceptor).")

(defun start-server (&key (port *port*))
  "Start server."
  (format t "~&Starting the web server on port ~a~&" port)
  (force-output)
  (setf *server* (make-instance 'easy-routes:easy-routes-acceptor
                                :port port))
  (hunchentoot:start *server*))

(defun stop-server ()
  "Stop server."
  (hunchentoot:stop *server*))




