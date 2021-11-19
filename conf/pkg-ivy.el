;;; pkg-ivy.el

(use-package counsel
 :diminish ivy-mode counsel-mode
 :init (setq enable-recursive-minibuffers t)
       (setq ivy-use-virtual-buffers t
             ivy-fixed-height-minibuffer t
             ivy-count-format "(%d/%d) ")
 :hook ((after-init . ivy-mode)
        (ivy-mode . counsel-mode))
 :bind (("C-s"   . swiper-isearch)
        ("C-r"   . swiper-isearch-backward)

        ("C-c C-r" . ivy-resume)
        ("C-x b" . ivy-switch-buffer)
        ("C-c v" . ivy-push-view)
        ("C-c V" . ivy-pop-view)
        
        ("M-x" . counsel-M-x)
        ("C-x C-f" . counsel-find-file)
        ("M-y" . counsel-yank-pop)
        ("C-c c" . counsel-compile)
        ("C-c J" . counsel-file-jump)
        ("C-c g" . counsel-git)
        ("C-c L" . counsel-git-log)
        ("C-c j" . counsel-git-grep)
        ("C-x l" . counsel-locate)))

(provide 'pkg-ivy)

;;; pkg-ivy.el ends here