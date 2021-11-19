;;; pkg-projectile.el -*- lexical-binding: t -*-

(use-package projectile
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :hook (after-init . projectile-mode)
  :custom
    (projectile-completion-system 'ivy)
    (projectile-globally-ignored-file-suffixes '(".elc" ".pyc" ".o")))

(provide 'pkg-projectile)

;;; pkg-projectile.el ends here