;;; package --- Installs the plugins and stuff

;;; Commentary:
;;; No comments...

;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(defvar package-list '(
    slime
    evil
    paredit
    ido
    projectile
    company
	eldoc
	ggtags
    helm
    helm-projectile
    helm-company
	helm-cscope
	helm-gtags
    yasnippet
    flycheck
    org
    racket-mode
    geiser
    quack
    haskell-mode
	busybee-theme
	anaconda-mode
	company-anaconda
	pyvenv
	xcscope
	yapfify
	))

(package-initialize)

(unless package-archive-contents
    (package-refresh-contents))

(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))

;;; packages.el ends here
