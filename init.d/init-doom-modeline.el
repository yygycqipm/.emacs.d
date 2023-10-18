;;; init-doom-modeline.el

;; This package is able to display icons if nerd-icons package and required fonts are installed.

(use-package doom-modeline
  :after nerd-icons
  :init
  (doom-modeline-mode)
  :config
  (setq doom-modeline-icon t)
  (setq doom-modeline-unicode-fallback nil))

(provide 'init-doom-modeline)

;;; init-doom-modeline.el ends here
