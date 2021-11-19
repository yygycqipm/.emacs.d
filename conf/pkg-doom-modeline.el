;;; pkg-doom-modeline.el

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :commands (all-the-icons-icon-for-buffer)
  :config
  (setq doom-modeline-unicode-fallback nil)
  (setq doom-modeline-icon t))

(provide 'pkg-doom-modeline)

;;; pkg-doom-modeline.el ends here