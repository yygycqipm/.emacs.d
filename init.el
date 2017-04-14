
(defconst tmp/gc-cons-threshold gc-cons-threshold)
(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
          (lambda () (setq gc-cons-threshold tmp/gc-cons-threshold)))
          
(add-to-list 'load-path (expand-file-name "runtime" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "pkg" user-emacs-directory))

(require 'benchmark)

(provide 'init)