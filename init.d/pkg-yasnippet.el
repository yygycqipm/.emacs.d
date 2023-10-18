;;; pkg-yasnippet.el

(use-package yasnippet
  :init (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :config (yas-reload-all)
  :hook (prog-mod . yas-minor-mode))

(provide 'pkg-yasnippet)

;;; pkg-yasnippet.el ends here