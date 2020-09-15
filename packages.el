;;; package --- Installs the plugins and stuff

;;; Commentary:
;;; No comments...

;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless package-archive-contents
    (package-refresh-contents))

(defvar package-list
  '(
    use-package
    evil
    ido
    projectile
    company
	  eldoc
	  ggtags
    lsp-mode
    helm
    helm-projectile
    helm-company
	  helm-cscope
	  helm-gtags
    yasnippet
    flycheck
    haskell-mode
	  xcscope
	  exec-path-from-shell
	  doom-themes
	  nimbus-theme
	  neotree
	  ))

(package-initialize)

(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))

;;; packages.el ends here
