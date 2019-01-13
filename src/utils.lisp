(in-package #:faces)
(cl-interpol:enable-interpol-syntax)

(defparameter *blocks-line-regex* "^([A-Z,0-9]+)\\.\\.([A-Z,0-9]+); ?(.*)"
  "Regex pattern to match the lines in unicode block file.")

(defun parse-blocks-file (blocks-file)
  "Parse unicode blocks file"
  (let ((data (read-file-into-string blocks-file))
        (block-ht (make-hash-table :test 'equal)))
    (loop for line in (cl-strings:split data #\linefeed)
          do (cl-ppcre:register-groups-bind (start end block-name)
                 (*blocks-line-regex* line)
               (setf (gethash block-name block-ht)
                     (cons (parse-integer start :radix 16)
                           (parse-integer end :radix 16)))))
    block-ht))
