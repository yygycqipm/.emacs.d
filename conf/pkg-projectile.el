;;; pkg-projectile.el -*- lexical-binding: t -*-

(use-package projectile
  :diminish projectile-mode
  :init
  (when (file-directory-p "~/projects")
    (setq projectile-project-search-path '("~/projects/")))
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :hook (after-init . projectile-mode)
  :custom
    (projectile-completion-system 'ivy)
    (projectile-switch-project-action 'projectile-dired)
    (projectile-globally-ignored-file-suffixes '(".elc" ".pyc" ".o")))

(provide 'pkg-projectile)

;;; pkg-projectile.el ends here
