;;; pkg-embark.el

(use-package embark
  :bind
  (("C-." . embark-act)        
   ("C-;" . embark-dwim)   
   ("C-h B" . embark-bindings)) 
  :init
  (setq prefix-help-command #'embark-prefix-help-command)
  
  ;; Show the Embark target at point via Eldoc.  You may adjust the Eldoc
  ;; strategy, if you want to see the documentation from multiple providers.
  (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

  :config
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none)))))

(provide 'pkg-embark)

;;; pkg-embark.el ends here
