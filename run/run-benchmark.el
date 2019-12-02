;; runtime-benchmark.el

(defun time-subtract-sec (a b)
  (format "%.2f" (float-time (time-subtract a b))))
  
(defun print-init-time ()
  (message "Finish: %s s"
           (time-subtract-sec after-init-time before-init-time)))
      
(add-hook 'after-init-hook 'print-init-time)

(provide 'runtime-benchmark)

;; runtime-benchmark.el ends here