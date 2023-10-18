;;; init-python-ts-mode.el

(use-package python
  :straight nil
  :hook (python-ts-mode . eglot-ensure)
  :config
  (add-to-list 'eglot-server-programs '(python-ts-mode "pyright"))
  (setq python-indent-offset 4))

(provide 'init-python-ts-mode)

;;; init-python-ts-mode.el ends here
