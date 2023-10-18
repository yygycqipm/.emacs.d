;;; init-nerd-icons-dired.el

(use-package nerd-icons-dired
  :after nerd-icons
  :hook
  (dired-mode . nerd-icons-dired-mode))

(provide 'init-nerd-icons-dired)

;;; init-nerd-icons-dired.el ends here
