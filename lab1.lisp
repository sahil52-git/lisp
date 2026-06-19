(defparameter *family*
'(
    (parent ram hari)
    (parent ram sita)
    (parent hari gopi)
))


(defun parent-p (x y)
    (not (null
          (member (list 'parent x y)
                  *family*
                  :test #'equal))))
                  


(defun ancestor-p (x y)
    (or (parent-p x y)
        (some (lambda (entry)
                (when (and (eq (first entry) 'parent)
                           (equal (second entry) x))
                    (ancestor-p (third entry) y)))
              *family*)))


(defun main()
    (format t "parent-p ram hari => ~a~%"
            (parent-p 'ram 'hari))

    (format t "parent-p ram sita => ~a~%"
            (parent-p 'ram 'sita))

    (format t "ancestor-p ram gopi => ~a~%"
            (ancestor-p 'ram 'gopi))

    (format t "ancestor-p sita ram => ~a~%"
            (ancestor-p 'sita 'ram)))


(main)