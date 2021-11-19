;;; pkg.el -*- lexical-binding: t -*-

(require 'package)

(setq
      package--init-file-ensured t
      package-enable-at-startup nil
      package-user-dir (expand-file-name "pkgs" user-emacs-directory)
      package-archives '(
          ;; Official mirror repository
          ;; ("gnu" . "https://elpa.gnu.org/packages/")
          ;; ("melpa" . "https://melpa.org/packages/")
          ;; ("melpa-stable" . "https://stable.melpa.org/packages/")

          ;; Tencent mirror repository
          ;; ("gnu" . "https://mirrors.cloud.tencent.com/elpa/gnu/")
          ;; ("melpa" . "https://mirrors.cloud.tencent.com/elpa/melpa/")
          ;; ("melpa-stable" . "https://mirrors.cloud.tencent.com/elpa/stable-melpa/")

          ;; 163 mirror repository
          ;; ("gnu" . "https://mirrors.163.com/elpa/gnu/")
          ;; ("melpa" . "https://mirrors.163.com/elpa/melpa/")
          ;; ("melpa-stable" . "https://mirrors.163.com/elpa/melpa-stable/")
      
          ;; Tsinghua mirror repository
          ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
          ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
          ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ))

(package-initialize)

;; Install `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load `use-package'
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t)
  (setq use-package-verbose t)
  (require 'use-package))

(provide 'pkg)

;;; pkg.el ends here