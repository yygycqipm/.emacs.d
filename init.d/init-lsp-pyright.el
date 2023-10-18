;;; init-lsp-pyright.el

(use-package lsp-pyright
  :hook (python-ts-mode . (lambda ()
                            (require 'lsp-pyright)
                            (lsp-deferred))))

(provide 'init-lsp-pyright)

;;; init-lsp-pyright.el ends here
