;;; init.el -*- lexical-binding: t -*-

;;
; Load path
;;
(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))          
(add-to-list 'load-path (expand-file-name "pkgs" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'env)
(require 'ver)
(require 'os)
(require 'gc)
(require 'benchmarking)
(require 'ui)
(require 'setting)
(require 'pkg)
(require 'meta-x)
(require 'locale)

(require 'pkg-dashboard)
(require 'pkg-doom-themes)
(require 'pkg-doom-modeline)
(require 'pkg-all-the-icons)
(require 'pkg-page-break-lines)
(require 'pkg-ivy)
(require 'pkg-projectile)
(require 'pkg-treemacs)
(require 'pkg-magit)
(require 'pkg-persp)

;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file) (load custom-file))

(provide 'init)

;;; init.el ends here