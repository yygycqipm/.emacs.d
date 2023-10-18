;;; init-treesit.el

;; Installing tree-sitter language grammars
;; Run `M-x treesit-install-language-grammars'.

(use-package treesit
  :straight nil
  :if (treesit-available-p)
  :config
  (setq treesit-language-source-alist
	'((elisp "https://github.com/Wilfred/tree-sitter-elisp")
	  (bash "https://github.com/tree-sitter/tree-sitter-bash")
	  (toml "https://github.com/tree-sitter/tree-sitter-toml")
	  (yaml "https://github.com/ikatyang/tree-sitter-yaml")
	  (json "https://github.com/tree-sitter/tree-sitter-json")
	  (markdown "https://github.com/ikatyang/tree-sitter-markdown")
	  (html "https://github.com/tree-sitter/tree-sitter-html")
	  (css "https://github.com/tree-sitter/tree-sitter-css")
	  (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
	  (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
	  (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
	  (make "https://github.com/alemuller/tree-sitter-make")
	  (cmake "https://github.com/uyha/tree-sitter-cmake")
	  (haskell "https://github.com/tree-sitter/tree-sitter-haskell")
	  (go "https://github.com/tree-sitter/tree-sitter-go")
	  (python "https://github.com/tree-sitter/tree-sitter-python")))
  (setq major-mode-remap-alist
	'((yaml-mode . yaml-ts-mode)
	  (bash-mode . bash-ts-mode)
	  (js2-mode . js-ts-mode)
	  (typescript-mode . typescript-ts-mode)
	  (json-mode . json-ts-mode)
	  (css-mode . css-ts-mode)
	  (haskell-mode . haskell-ts-mode)
	  (python-mode . python-ts-mode)))
  (defun treesit-install-language-grammars ()
    "Build and install the tree-sitter language grammar library for LANGS according to `treesit-language-source-alist'."
    (interactive)
    (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))))
  
(provide 'init-treesit)

;;; init-treesit.el ends here
