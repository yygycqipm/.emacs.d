;;; pkg.el -*- lexical-binding: t -*-

;; Upon starting up Emacs for the first time, further third-party
;; packages will be automatically downloaded and installed. If you
;; encounter any errors at that stage, try restarting Emacs, and possibly
;; running `M-x package-refresh-contents` before doing so.

(require 'package)

(setq package--init-file-ensured t)
(setq package-enable-at-startup nil)
(setq package-user-dir (expand-file-name "pkgs" user-emacs-directory))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t)
  (setq use-package-verbose t)
  (require 'use-package))

(provide 'pkg)

;;; pkg.el ends here