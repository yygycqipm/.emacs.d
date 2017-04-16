;;
; Reconfigure some default reference
;;

;; locale
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 
  (if (eq system-type 'windows-nt) 'utf-16-le 'utf-8))
(prefer-coding-system 'utf-8)

;; appearance
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(when (fboundp 'tooltip-mode)
  (tooltip-mode -1))

  
(setq
 indicate-empty-lines t)

(setq-default
 cursor-type 'bar)



; frame-title-format
; mode-line-format



;; behavior       
(fset 'yes-or-no-p 'y-or-n-p)

(setq
 case-fold-search t
 make-backup-files nil
 auto-save-default nil
 backup-by-copying t
 ring-bell-function 'ignore
 inhibit-startup-screen t
 initial-scratch-message nil)
  

           
;; editor   

(delete-selection-mode 1)
(show-paren-mode 1)
(column-number-mode 1)
(global-linum-mode 1)
(defun ycw/linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
     (propertize (format (format "%%%dd    " w) line) 'face 'linum)))
(setq linum-format 'ycw/linum-format-func)
(set-fringe-mode '(1 . 0))
(global-hl-line-mode 1)

(setq
 truncate-lines t
 show-paren-delay 0
 require-final-newline t
 mouse-yank-at-point t
 x-select-enable-clipboard t
 large-file-warning-threshold (* 100 1024 1024))
 
(setq-default
 indent-tabs-mode nil
 tab-width 4)
        

(set-face-attribute 'default nil
                    :family "Consolas"
                    :width 'normal
                    :height 110
                    :weight 'normal) 

 
(provide 'setting)