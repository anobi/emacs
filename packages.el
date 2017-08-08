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
    helm
    helm-projectile
	helm-company
	yasnippet
    flycheck
	org
	racket-mode
	geiser
	quack
	haskell-mode))

(package-initialize)

(unless package-archive-contents
    (package-refresh-contents))

(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))

;;; packages.el ends here
