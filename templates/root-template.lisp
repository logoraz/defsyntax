(defpackage #:defsyntax/templates/root-template
  (:use #:cl)
  (:export #:*template-root*
           #:*template-product*))
(in-package #:defsyntax/templates/root-template)

(defparameter *template-root* "
<title> Lisp Web App </title>
<body>
  <ul>
  {% for product in products %}
    <li>
      <a href=\"/product/{{ product.0}}\">{{ product.1 }} - {{ product.2 }}</a>
    </li>
  {% endfor %}
  <ul>
</body>
")

(defparameter *template-product* "
<body>
  {{ product }}
  {% if debug %} debug info! {% endif $}
</body>
")

