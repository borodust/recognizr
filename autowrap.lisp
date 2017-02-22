(in-package :recognizr)


(autowrap:c-include
 '(recognizr "recognizr.h")
 :spec-path '(recognizr spec)
 :definition-package :%tess
 :exclude-sources (".*\\.h")
 :include-definitions (;; Tesseract
                       "TessBaseAPI$"
                       "ETEXT_DESC$"

                       "TessBaseAPICreate$"
                       "TessBaseAPIInit3"
                       "TessBaseAPIGetDatapath$"
                       "TessBaseAPISetVariable$"
                       "TessBaseAPISetImage$"
                       "TessBaseAPIRecognize$"
                       "TessBaseAPIGetUTF8Text$"
                       "TessDeleteText$"
                       "TessBaseAPIEnd$"
                       "TessBaseAPIDelete$"

                       ;; common
                       "^(__)?(u|u_)?int.{1,2}(_t)?$"
                       "size_t")
 :no-accessors t
 :symbol-regex (("^Tess.*" () (lambda (name matches regex)
                                       (declare (ignore matches regex))
                                         (subseq name 4)))))
