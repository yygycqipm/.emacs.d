;;; init-dashboard.el -*- lexical-binding: t -*-

(use-package dashboard
  :after
  (nerd-icons page-break-lines)
  :init
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
  (setq dashboard-banner-logo-title "Welcome to Emacs")
  (setq dashboard-startup-banner 'official)
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-display-icons-p t)
  (setq dashboard-icon-type 'nerd-icons)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-page-separator "\n\f\n") 
  (setq dashboard-items '((projects . 5)
			  (recents  . 5)))
  (setq dashboard-projects-backend 'project-el)
  (setq dashboard-footer-messages '("Hello World"))
  (setq dashboard-footer-icon (nerd-icons-octicon "nf-oct-chevron_right"
                                                  :height 1.1
                                                  :v-adjust -0.05
                                                  :face 'font-lock-keyword-face))
  :hook
  (after-init . dashboard-refresh-buffer)
  :config
  (dashboard-setup-startup-hook))

(provide 'init-dashboard)

;;; init-dashboard.el ends here
