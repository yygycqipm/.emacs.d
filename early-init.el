;;; early-init.el

;; Adjust garbage collection thresholds during startup, and thereafter
(defconst normal-gc-cons-threshold (* 16 1024 1024))
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold normal-gc-cons-threshold)))

;; Start Emacs with the '--debug-init' option to view a complete error backtrace
(setq debug-on-error init-file-debug)

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

(provide 'early-init)

;;; early-init.el ends here
