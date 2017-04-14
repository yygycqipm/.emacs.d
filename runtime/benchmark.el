(defun format-time-millis (time)
  (truncate (* 1000 (float-time time))))  
  
(defun print-init-time ()
  (message "init completed in %s ms"
           (- (format-time-millis after-init-time)
              (format-time-millis before-init-time))))
      
(add-hook 'after-init-hook 'print-init-time)


(provide 'benchmark)