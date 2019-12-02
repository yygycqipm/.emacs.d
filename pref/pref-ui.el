;; cnf-ui.el

(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(when (fboundp 'tooltip-mode)
  (tooltip-mode -1))

(setq-default cursor-type 'bar)  
  
(provide 'cnf-ui)

;; cnf-ui.el ends here