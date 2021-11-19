;;; ui.el --- Setting of non-TTY frames -*- lexical-binding: t -*-

(when (fboundp 'menu-bar-mode)
  (menu-bar-mode 0))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(when (fboundp 'tooltip-mode)
  (tooltip-mode 0))

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

(setq-default
  window-resize-pixelwise t
  frame-resize-pixelwise t)

;;
;;; Windows/frames

;; A simple frame title
(setq frame-title-format '("%b – Emacs")
      icon-title-format frame-title-format)

;; A vscode style frame title
;; (setq frame-title-format
;; 	  '(:eval (concat
;; 			   (if (and buffer-file-name (buffer-modified-p)) "• ")
;; 			   (buffer-name)
;; 			   (if buffer-file-name
;; 				   (concat " - " (directory-file-name (abbreviate-file-name default-directory))))
;; 			   " - Emacs"))
;; 	  )

(provide 'ui)

;;; ui.el ends here