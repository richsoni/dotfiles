(set-macro-character #\] (get-macro-character #\)))
(set-dispatch-macro-character #\# #\[
  (lambda (stream char1 char2)
    (declare (ignore char1 char2))
    (setf (readtable-case *readtable*) :preserve)
    (unwind-protect
         (let ((command-line (read-delimited-list #\] stream t)))
           (list 'ext:run-program (princ-to-string (car command-line))
                 :arguments `',(mapcar #'princ-to-string (rest command-line))))
      (setf (readtable-case *readtable*) :upcase))))
