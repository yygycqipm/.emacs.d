;;; pkg-doom-modeline.el

(use-package nerd-icons
  ;; :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  ;; (nerd-icons-font-family "Symbols Nerd Font Mono")
  )

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :commands (all-the-icons-icon-for-buffer)
  :config
  (setq doom-modeline-unicode-fallback nil)
  (setq doom-modeline-icon t))

;; (use-package powerline
;;   :init (powerline-default-theme))

(provide 'pkg-doom-modeline)

;;; pkg-doom-modeline.el ends here