(defpackage #:defsyntax/core/models
  (:use #:cl
        #:iterate) ;; for extended iteration features ONLY
  (:export #:products
           #:get-product
           #:search-products))
(in-package #:defsyntax/core/models)


;; Models
(defun products (&optional (n 5))
  (loop :for i :from 0 :below n
        :collect (list i
                      (format nil "Product nb ~A" i)
                      9.99)))

(defun get-product (n)
  "Query the DB."
  (list n (format nil "Product nb ~R" n) 9.99))

(defun search-products (products query)
  (loop :for product :in products
        :if (search query (second product) :test #'equalp)
        :collect product))
