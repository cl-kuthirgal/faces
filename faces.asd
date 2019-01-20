(defsystem #:faces
  :description "Glyph analysis for a few scripts"
  :author "Abhinav Tushar <lepisma@fastmail.com>"
  :license "GPLv3"
  :version "0.1.0"
  :depends-on (#:zpb-ttf
               #:cl-vectors
               #:alexandria
               #:cl-cut
               #:cl-interpol
               #:cl-strings
               #:cl-ppcre
               #:trivial-download)
  :components
  ((:file "package")
   (:module "src"
    :depends-on ("package")
    :serial t
    :components
    ((:file "utils")
     (:file "features")
     (:file "faces")))))
