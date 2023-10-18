;;; init-flymake.el

(use-package flymake
  :straight nil
  :defer t
  :hook (prog-mode . flymake-mode)
  :bind (:map flymake-mode-map
	      ("M-n" . flymake-goto-next-error)
	      ("M-p" . flymake-goto-prev-error)))

(provide 'init-flymake)

;;; init-flymake.el ends here
