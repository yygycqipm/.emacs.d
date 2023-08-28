;;; settings.el -*- lexical-binding: t -*-

(setq inhibit-startup-screen t)
;; (setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq use-file-dialog nil)
(setq use-dialog-box nil)

(setq
 auto-save-default nil
 auto-save-list-file-prefix nil)

(setq backup-inhibited t)
(setq make-backup-files nil)

(setq-default cursor-type 'bar)

(setq default-directory "~/")

(set-face-attribute 'default nil :font "Consolas-12" )
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei" :size 14))



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


(column-number-mode)
(when (fboundp 'display-line-numbers-mode)
  (add-hook 'prog-mode-hook 'display-line-numbers-mode))


(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(modify-coding-system-alist 'process "*" 'utf-8)

(provide 'settings)

;;; settings.el ends here