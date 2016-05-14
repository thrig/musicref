(defconstant +baseduration+ 4)          ; quarter note

;;; given a number of notes, and a base duration, calculates what
;;; duration of note and if necessary tuplet is required to fit that
;;; given number of notes exactly into the given base duration.
(defun breakdown (n dur)
  (let ((pow) (rem))
    (setf (values pow rem) (truncate (/ (log n) (log 2))))
    (list
      (* dur (expt 2 pow))              ; duration required for note(s)
      (if (plusp rem) (/ (1- n) n)))))  ; tuplet, if any

(loop for i from 1 to 20 do 
      (format t "~d ~{~d ~a~}~%" i (breakdown i +baseduration+)))

; 17 64 16/17 indicates that to fit 17 notes into a quarter note, 64th
; notes must be the duration, and a tuplet of 16/17. Confirm with
; lilypond via:
;   ly-fu --open '\times 16/17 { c64 c c c c c c c c c c c c c c c c } r4 r4 r4 | r r r r'
