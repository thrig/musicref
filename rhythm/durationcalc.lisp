(defconstant +baseduration+ 4)          ; quarter note

;;; given a number of notes, and a base duration, calculates what
;;; duration of note and if necessary tuplet is required to fit that
;;; given number of notes exactly into the given base duration.
;;; NOTE buggy though usable for even divisions, 2/3, 4/5, and a few
;;; other fractional values...
(defun breakdown (n dur)
  (let ((pow) (rem))
    (setf (values pow rem) (truncate (/ (log n) (log 2))))
    (list
      (* dur (expt 2 pow))              ; duration required for note(s)
      (if (plusp rem) (/ (1- n) n)))))  ; tuplet, if any

;;; and the rest of this is testing the above assertion for correctness
(defun audit-lilypond (i file)
  (let ((results (run-program "./ly-audit-beam"
                              :arguments (list file)
                              :input nil :output :stream)))
    (let ((out (read-line results nil "")))
      (if (plusp (length out))
        (format t "NOT OK ~d ~a~%" i out)))))

(defun out-filename (i)
  (format nil "durcalc-temp~a.ly" i))

(defun write-lilypond (stream i dur tuplet)
  (format stream "\\version \"2.18.2\"~%\\relative c { ")
  (dotimes (r +baseduration+)           ; fill up a measure
    (if tuplet (format stream "\\times ~d { " tuplet))
    (dotimes (x i) (format stream "c~d " dur))
    (if tuplet (format stream "} ")))
  (format stream "| }")                 ; for the measure bar check
  (fresh-line stream))

(loop for i from 1 to 32 do 
      (destructuring-bind (dur tuplet) (breakdown i +baseduration+)
        (let ((fname (out-filename i)))
          (with-open-file (stream fname :direction :output)
            (write-lilypond stream i dur tuplet))
          (audit-lilypond i fname))))
