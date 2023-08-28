;;; pkg-dashboard.el -*- lexical-binding: t -*-

(use-package dashboard
  :init 
  (progn
    (setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
    (setq dashboard-startup-banner 'official)
    (setq dashboard-show-shortcuts nil)
    (setq dashboard-set-heading-icons t)
    (setq dashboard-set-file-icons t)
    (setq dashboard-items '((projects . 5)
                            (recents  . 5)  
                            (agenda . 5)))
    (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*"))))
  :hook (after-init . dashboard-refresh-buffer)
  :config  
  (dashboard-setup-startup-hook))

(provide 'pkg-dashboard)

;;; pkg-dashboard.el ends here