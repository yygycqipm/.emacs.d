;;; pkg-all-the-icons.el -*- lexical-binding: t -*-

(defconst IS-WINDOWS (eq system-type 'window-nt))

      (when (boundp 'libgnutls-version)
        (concat "SECURE128:+SECURE192:-VERS-ALL:+VERS-TLS1.2"
                (if (and (not IS-WINDOWS)
                         (not (version< emacs-version "26.3"))
                         (>= libgnutls-version 30605))
                    ":+VERS-TLS1.3")))

;; Installing Fonts
;; Run `M-x all-the-icons-install-fonts'.
;; this will also run fc-cache -f -v on MacOS and Linux which can take some time to complete. 
;; For Windows, this function will prompt for a download directory for you to install them manually.
(use-package all-the-icons
  :if (display-graphic-p))

(provide 'pkg-all-the-icons)

;;; pkg-all-the-icons.el ends here