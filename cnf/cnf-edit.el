(setq default-directory "~/workspace/")

; frame-title-format
; mode-line-format






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



(provide 'cnf-edit)