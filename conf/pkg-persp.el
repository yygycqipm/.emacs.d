;;; pkg-persp.el

(use-package persp-mode
  :after (workgroups)
  :hook ((after-init . persp-mode)
         (persp-mode . persp-load-frame)
         (kill-emacs . persp-save-frame)))

(provide 'pkg-persp)

;;; pkg-persp.el ends here