;; runtime-pkg.el

(require 'package)

(setq
      package--init-file-ensured t
      package-enable-at-startup nil
      package-user-dir (expand-file-name "pkg" user-emacs-directory)
      package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
                         
(unless package-archive-contents (package-refresh-contents))

(defun require-pkg (pkg)
  ((unless (package-install-p pkg) (package-install pkg))))

(provide 'runtime-pkg)

;; runtime-pkg.el ends here