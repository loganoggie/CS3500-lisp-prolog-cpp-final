; Logan Nielsen
; Exam 3 - problem 15 - part (a)

(defun sum357 (i sum)
  ; if i is greater than or equal to 1000, print number and quit
  (if (> i 1000)
    (progn
      (print sum)
      (quit)
    )
  ; else
    (progn
      ; if i mod 3 or i mod 5 or i mod 7 == 0 then
      ; sum = sum + i and i++ ...... then call sum357(i sum)
      (if (or (= 0 (mod i 3)) (= 0 (mod i 5)) (= 0 (mod i 7)))
        (progn
          ;(print sum)
          (setq sum (+ sum i))
          (setq i (+ i 1))
          (sum357 i sum)
        )
      ; else i++ and call sum357(i sum)
        (progn
          (setq i (+ i 1))
          (sum357 i sum)
        )
      )
    )
  )
)
