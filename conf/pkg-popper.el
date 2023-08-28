;;; pkg-popper.el
;;; Homepage: https://github.com/karthink/popper

(use-package popper
  :bind (("C-`"   . popper-toggle-latest)
         ("M-`"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :init
  (setq popper-reference-buffers
    (append '("\\*Messages\\*"
              "Output\\*$"
              "\\*Async Shell Command\\*"
              )
            '("^\\*eshell.*\\*$" eshell-mode
              "^\\*shell.*\\*$"  shell-mode
              "^\\*term.*\\*$"   term-mode
              "^\\*vterm.*\\*$"  vterm-mode
              )
            '(help-mode
              compilation-mode
              )))
  (popper-mode +1)
  (popper-echo-mode +1))

(provide 'pkg-popper)

;;; pkg-popper ends here