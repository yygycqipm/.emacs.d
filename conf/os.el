;;; os.el  -*- lexical-binding: t; -*-

(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (or (eq system-type 'linux)
                       (eq system-type 'gnu/linux)))
(defconst *is-windows* (or (eq system-type 'ms-dos)
                         (eq system-type 'cygwin)
                         (eq system-type ' windows-nt)))
(defconst *is-bsd* (eq system-type 'berkeley-unix))
(defconst *is-unix* (eq system-type 'usg-unix-v))

(provide 'os)

;;; os.el ends here