;;; init-marginalia.el

(use-package marginalia
  :init (marginalia-mode)
  :bind (:map minibuffer-local-map
	      ("M-a" . marginalia-cycle)))

(provide 'init-marginalia)

;;; init-marginalia.el ends here
