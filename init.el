;;; init.el -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "init.d" user-emacs-directory))        

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-straight)
(require 'init-settings)
(require 'init-dashboard)
(require 'init-eww)
(require 'init-nerd-icons-dired)
(require 'init-nerd-icons)
(require 'init-page-break-lines)
(require 'init-doom-themes)
(require 'init-doom-modeline)
(require 'init-popper)
(require 'init-ace-window)

(require 'init-vertico)
(require 'init-marginalia)
(require 'init-nerd-icons-completion)
(require 'pkg-consult)
(require 'pkg-embark)
(require 'pkg-embark-consult)

(require 'pkg-orderless)
(require 'pkg-wgrep)
(require 'init-which-key)
(require 'init-rainbow-mode)
(require 'init-smartparens)
(require 'init-rainbow-delimiters)
(require 'init-auto-highlight-symbol)
(require 'pkg-magit)
(require 'init-treesit)
(require 'init-eglot)
(require 'init-python-ts-mode)
(require 'pkg-yasnippet)

(require 'init-corfu)

(require 'init-flymake)
(require 'pkg-slime)
(require 'pkg-markdown-mode)
(require 'init-esup)

;; Variables initigured via the interactive 'customize' interface
(when (file-exists-p custom-file) (load custom-file))

(provide 'init)

;;; init.el ends here
