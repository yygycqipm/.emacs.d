;;; ver.el

(let ((minversion "27.2"))
  (when (version< emacs-version minversion)
    (error "Emacs v%s or higher is required" minversion)))

(provide 'ver)

;;; ver.el ends here