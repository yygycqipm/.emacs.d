;;;                                          __
;;      ___  ____ ___  ____ ___________ ____/ /
;;     / _ \/ __ `__ \/ __ `/ ___/ ___// __  / 
;;   _/  __/ / / / / / /_/ / /__(__  )/ /_/ /  
;;  (_)___/_/ /_/ /_/\__,_/\___/____(_)__,_/                                              
;;;
;;  Author: Yunchen Wen <yunchenplz@gmail.com>
;;;


;;
; Optimize the GC to accelerate startup
;;




;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defconst ycw/gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold ycw/gc-cons-threshold)))

;;
; Path setup
;;
(add-to-list 'load-path (expand-file-name "runtime" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "pkg" user-emacs-directory))          
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

;;
; Bootstrap config
;;
(require 'benchmark)
(require 'setting)
(require 'pkg)



;;
; Load up other packages
;;



(setq custom-file (expand-file-name "custom.el" (concat user-emacs-directory "runtime")))
(when (file-exists-p custom-file)
  (load custom-file))
  
(provide 'init)
