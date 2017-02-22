(in-package :recognizr.def)


(defpackage :%tesseract
  (:nicknames :%tess)
  (:use))


(defpackage :recognizr
  (:use :cl :autowrap :plus-c)
  (:export recognize

           make-foreign-image
           with-foreign-image
           foreign-image-ptr
           foreign-image-width
           foreign-image-height
           foreign-image-channels
           foreign-image->opticl-image
           opticl-image->foreign-image))
