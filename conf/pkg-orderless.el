;;; pkg-orderless.el

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(provide 'pkg-orderless)

;;; pkg-orderless.el ends here
