;;; built-in-dired.el  -*- lexical-binding: t; -*-

(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind ("C-x C-j" . dired-jump))

(provide 'built-in-dired)

;;; built-in-dired.el ends here  
