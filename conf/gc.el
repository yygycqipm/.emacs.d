;;; gc.el -*- lexical-binding: t -*-

;;
; Adjust garbage collection thresholds during startup, and thereafter
;;
(defconst transient/gc-cons-threshold gc-cons-threshold)
(defconst transient/gc-cons-percentage gc-cons-percentage)
(setq gc-cons-threshold (* 128 1024 1024))
(setq gc-cons-percentage 0.5)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold transient/gc-cons-threshold gc-cons-percentage transient/gc-cons-percentage)))

(provide 'gc)

;;; gc.el ends here