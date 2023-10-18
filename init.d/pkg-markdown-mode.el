;;; pkg-markdown-mode.el
(use-package markdown-mode
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
              ("C-c C-e" . markdown-do)))

(provide 'pkg-markdown-mode)
;;; pkg-markdown-mode.el
