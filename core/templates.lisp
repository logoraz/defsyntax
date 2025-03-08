(defpackage #:defsyntax/core/templates
  (:use #:cl)
  (:export #:*template-root*
           #:*template-product*))
(in-package #:defsyntax/core/templates)


(defparameter *template-root* "
<html>
<head>
  <link
  rel=\"stylesheet\"
  href=\"https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css\">
</head>

<body class=\"container\">
 <form action=\"/\" method=\"GET\">
  <div>
    <label for=\"query\">What do you search for?</label>
    <input name=\"query\" id=\"query\" placeholder=\"Search…\" />
  </div>
  <div>
    <button>Search</button>
  </div>
</form>

{% if query %}
<div> query is: {{ query }} </div>

<ul>
  {% for product in results %}
    <li>
      <a href=\"/product/{{ product.0 }}\">{{ product.1 }} - {{ product.2 }}</a>
    </li>
  {% endfor %}
</ul>
{% endif %}
</body>
</html>
")

(defparameter *template-product* "
<body>
    {{ product }}

{% if debug %} debug info! {% endif %}
</body>
")

