(defun ycw/time-subtract-ms (a b)
  (truncate (* 1000 (float-time (time-subtract a b)))))
  
(defun ycw/print-init-time ()
  (message "init completed in %s ms"
           (ycw/time-subtract-ms after-init-time before-init-time)))
      
(add-hook 'after-init-hook 'ycw/print-init-time)


(provide 'benchmark)