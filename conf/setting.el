;;; setting.el -*- lexical-binding: t -*-

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

(setq use-file-dialog nil)
(setq use-dialog-box nil)

(setq
 auto-save-default nil
 auto-save-list-file-prefix nil)

(setq backup-inhibited t)
(setq make-backup-files nil)

(setq-default cursor-type 'bar)

(setq default-directory "~/")

(provide 'setting)

;;; setting.el ends here