(defpackage :deflux/tests/base
  (:use :cl
        :rove)
  (:export #:test-suite))
(in-package :deflux/tests/base)


(def-suite test-suite
  :description "Testing chemscribe.")

(test my-test
      (is (= 2 (+ 1 1))))
