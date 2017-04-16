;; runtime-benchmark.el

(defun time-subtract-ms (a b)
  (truncate (* 1000 (float-time (time-subtract a b)))))
  
(defun print-init-time ()
  (message "init completed in %s ms"
           (time-subtract-ms after-init-time before-init-time)))
      
(add-hook 'after-init-hook 'print-init-time)

(provide 'runtime-benchmark)

;; runtime-benchmark.el ends here