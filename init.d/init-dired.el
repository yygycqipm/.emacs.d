;;; init-dired.el  -*- lexical-binding: t; -*-

(use-package dired
  :straight nil
  :commands (dired dired-jump)
  :bind ("C-x C-j" . dired-jump))

(provide 'init-dired)

;;; init-dired.el ends here  
