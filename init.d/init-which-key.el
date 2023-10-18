;;; init-which-key.el

(use-package which-key
  :hook
  (after-init . which-key-mode)
  :config
  (which-key-setup-minibuffer))

(provide 'init-which-key)

;;; init-which-key ends here
