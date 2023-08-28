;;; pkg-embark-consult.el

(use-package embark-consult
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

(provide 'pkg-embark-consult)

;;; pkg-embark-consult.el ends here
