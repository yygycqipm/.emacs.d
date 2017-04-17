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
(defconst var:gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold var:gc-cons-threshold)))

;;
; Load paths
;;
(add-to-list 'load-path (expand-file-name "runtime" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "cnf" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "pkg" user-emacs-directory))          
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

;;
; Bootstrap config
;;
(require 'runtime-benchmark)
(require 'runtime-pkg)
(require 'runtime-lib)

(setq inhibit-default-init t)


;;
; Load up other packages
;;
(run-with-idle-timer
 1 nil #'(lambda () (require 'cnf-backup)
                    (require 'cnf-auto-save)))


(setq garbage-collection-messages t)


(setq custom-file (expand-file-name "custom.el" (concat user-emacs-directory "runtime")))
(when (file-exists-p custom-file) (load custom-file))
  
(provide 'init)
