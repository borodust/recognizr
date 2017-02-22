(in-package :cl-user)

(defpackage :recognizr.def
  (:use :cl :asdf))

(in-package :recognizr.def)


(defsystem recognizr
  :description "OCR"
  :version "0.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "Unlicense"
  :depends-on (alexandria log4cl opticl cl-autowrap)
  :serial t
  :components ((:file "packages")
               (:file "libtesseract")
               (:static-file "recognizr.h")
               (:module spec)
               (:file "autowrap")
               (:file "recognizr")))
