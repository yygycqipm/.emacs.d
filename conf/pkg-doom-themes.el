;;; pkg-doom-themes.el

(use-package doom-themes
  :init  (load-theme 'doom-one t)
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic nil)
 
  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-colors")
  (doom-themes-treemacs-config))

(provide 'pkg-doom-themes)

;;; pkg-doom-themes.el