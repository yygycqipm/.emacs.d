;;; pkg-which-key.el

(use-package which-key
  :hook (after-init . which-key-mode)
  :config (which-key-setup-minibuffer))

(provide 'pkg-which-key)

;;; pkg-which-key ends here