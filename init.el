;;;                                          __
;;      ___  ____ ___  ____ ___________ ____/ /
;;     / _ \/ __ `__ \/ __ `/ ___/ ___// __  / 
;;   _/  __/ / / / / / /_/ / /__(__  )/ /_/ /  
;;  (_)___/_/ /_/ /_/\__,_/\___/____(_)__,_/                                              
;;;
;;  Author: Yunchen Wen <yunchenplz@gmail.com>
;;;


;;
; Optimize garbage collection
;;
(defconst *gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold *gc-cons-threshold)))

;;
; Load path
;;
(add-to-list 'load-path (expand-file-name "runtime" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "cnf" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "pkg" user-emacs-directory))          
(add-to-list 'load-path (expand-file-name "lang" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

;;
; Bootstrap runtime
;;
(require 'runtime-benchmark)
(require 'runtime-pkg)
(require 'runtime-lib)

;;
; Load config
;;
(require 'cnf-ui)
(require 'cnf-edit)
(require 'cnf-linum)
(require 'cnf-indent)
(require 'cnf-setting)
(require 'cnf-keybinding)
(require 'cnf-locale)
(require 'cnf-backup)
(require 'cnf-auto-save)

;;
; Install dependencies
;;
(require-pkg 'nlinum)




(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file) (load custom-file))
  
(provide 'init)
