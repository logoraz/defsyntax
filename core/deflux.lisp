(defpackage :deflux/core/swacl
  (:use :cl
        :deflux/core/database
        :deflux/templates/root-template)
  (:export #:start-server))
(in-package :deflux/core/swacl)

;;; First Route
(defvar *server* nil
  "Server instance (Hunchentoot acceptor).")

(defparameter *port* 8899 "The application port.")

(defun render (template &rest args)
  (apply
   #'djula:render-template*
   (djula::compile-string template)
   nil
   args))

(defun render-product (n)
  "Render products."
  (djula:render-template*
   (djula::compile-string *template-product*) 
   nil
   :products (get-product n)))

(easy-routes:defroute root ("/") ()
  (render *template-root* :products (products)))

(easy-routes:defroute product-route ("/product/:n") (&path (n 'integer))
  (render *template-product* :product (get-product n)))

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




