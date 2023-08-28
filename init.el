;;; init.el -*- lexical-binding: t -*-

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
;; (setq debug-on-error t)

;; Adjust garbage collection thresholds during startup, and thereafter
(defconst helper/gc-cons-threshold gc-cons-threshold)
(defconst helper/gc-cons-percentage gc-cons-percentage)
(setq gc-cons-threshold (* 128 1024 1024))
(setq gc-cons-percentage 0.5)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold helper/gc-cons-threshold gc-cons-percentage helper/gc-cons-percentage)))

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))        
(add-to-list 'load-path (expand-file-name "pkgs" user-emacs-directory))

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'settings)
(require 'pkg)
(require 'pkg-dashboard)
(require 'pkg-doom-themes)
(require 'pkg-doom-modeline)
(require 'pkg-page-break-lines)
(require 'pkg-all-the-icons)
(require 'pkg-projectile)
(require 'pkg-magit)
(require 'pkg-popper)
(require 'pkg-vertico)
(require 'pkg-consult)
(require 'pkg-embark)
(require 'pkg-embark-consult)
(require 'pkg-marginalia)
(require 'pkg-orderless)
(require 'pkg-wgrep)
(require 'pkg-which-key)
(require 'pkg-restart-emacs)
(require 'pkg-yasnippet)
(require 'pkg-flycheck)
;; (require 'pkg-eglot)
(require 'pkg-rainbow-delimiters)
(require 'pkg-slime)



;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file) (load custom-file))

(provide 'init)

;;; init.el ends here
