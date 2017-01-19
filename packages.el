(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(setq package-list '(
    slime
    evil
    ido
    projectile
    helm
    helm-projectile
    flycheck
    material-theme))

(package-initialize)

(unless package-archive-contents
    (package-refresh-contents))

(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))