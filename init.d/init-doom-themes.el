;;; init-doom-themes.el

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic nil)
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config)
  (setq doom-themes-treemacs-enable-variable-pitch nil)
  (doom-themes-org-config))

(provide 'init-doom-themes)
