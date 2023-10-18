;;; init-eww.el

(use-package eww
  :straight nil
  :defer t
  :config
  (setq browse-url-browser-function 'eww-browse-url)
  (setq	shr-use-fonts  nil)
  (setq	shr-use-colors nil)
  (setq	shr-indentation 2)
  (setq	eww-search-prefix "https://www.google.com/search?q=")
  (set-face-attribute 'variable-pitch nil :family "Operator Mono Office" :foundry "outline"))

(provide 'init-eww)

;;; init-eww.el ends here
