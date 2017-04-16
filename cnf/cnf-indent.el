;; cnf-indent.el

(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook
               'haskell-cabal-mode-hook
               'qml-mode-hook
               ))
  (add-hook hook '(lambda () (setq indent-tabs-mode nil))))

(provide 'cnf-indent)

;; cnf-indent.el ends here