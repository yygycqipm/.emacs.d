;;; pkg-lsp-mode.el

(use-package lsp-mode
    :hook (c++-mode . lsp-deferred)
    :commands (lsp lsp-deferred))

(provide 'pkg-lsp-mode)

;;; pkg-lsp-mode.el ends here