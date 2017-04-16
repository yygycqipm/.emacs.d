(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq 
  package-enable-at-startup nil
  package-user-dir (expand-file-name "pkg" user-emacs-directory))
(package-initialize)
                         
(unless package-archive-contents
  (package-refresh-contents))

                         
(provide 'pkg)