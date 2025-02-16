(defpackage :deflux/core/database
  (:use :cl)
  (:export #:products
           #:get-product))
(in-package :deflux/core/database)


(defun products (&optional (n 5))
  (loop :for i :from 0 :below n
        :collect (list i
                      (format nil "Product nb ~A" i)
                      9.99)))

(defun get-product (n)
  "Query the DB."
  (list n (format nil "Product nb ~a" n) 9.99))
