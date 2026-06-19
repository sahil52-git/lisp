(defun tower-of-hanoi (n source auxiliary destination)
  (if (= n 1)
      (format t "Move disk 1 from ~a to ~a~%" source destination)
      (progn
        ;; Move n-1 disks from source to auxiliary
        (tower-of-hanoi (- n 1) source destination auxiliary)

        ;; Move largest disk to destination
        (format t "Move disk ~a from ~a to ~a~%" n source destination)

        ;; Move n-1 disks from auxiliary to destination
        (tower-of-hanoi (- n 1) auxiliary source destination))))

;; Example: 3 disks
(tower-of-hanoi 3 'A 'B 'C)

(quit)