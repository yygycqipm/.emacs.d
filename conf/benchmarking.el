;;; benchmarking.el --- Measure startup times -*- lexical-binding: t -*-

(defun helper/time-subtract-sec (a b)
  (format "%.2f" (float-time (time-subtract a b))))
  
(defun helper/print-init-time ()
  (message "Finish: %s s"
           (helper/time-subtract-sec after-init-time before-init-time)))
      
(add-hook 'after-init-hook 'helper/print-init-time)

(provide 'benchmarking)

;;; benchmarking.el ends here