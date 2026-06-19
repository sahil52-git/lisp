(defun gcd-euclid (a b)
  (if (= b 0)
      a
      (gcd-euclid b (mod a b))))

(print (gcd-euclid 48 56))
(quit)