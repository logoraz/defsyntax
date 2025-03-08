(defpackage #:defsyntax/core/routes 
  (:use #:cl
        #:defsyntax/core/templates
        #:defsyntax/core/models)
  (:export #:root
           #:product-route))
(in-package #:defsyntax/core/routes)


(defun render (template &rest args)
  (apply
   #'djula:render-template*
   (djula::compile-string template)
   nil
   args))

;; Routes
(easy-routes:defroute root ("/") (query)
  (render *template-root*
          :results (search-products (products) query)
          :query query))

(easy-routes:defroute product-route ("/product/:n") (&get debug &path (n 'integer))
  (render *template-product* 
          :product (get-product n)
          :debug debug))

