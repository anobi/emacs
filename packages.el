;;; package --- Installs the plugins and stuff

;;; Commentary:
;;; No comments...

;;; Code:

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless package-archive-contents
    (package-refresh-contents))

;; TODO: Try elpaca or straight.el instead of package.el as package manager?
;; TODO: Other packages to check out:
;;       * Tempel to replace yasnippet
;;       * Dap-mode for debugging
;;       * Treemacs if I need a tree
(defvar package-list
  '(
    use-package
    evil
    projectile
    corfu
    cape
    eldoc
    eat
    ggtags
    savehist
    yasnippet
    flycheck
    xcscope
    exec-path-from-shell
    doom-themes
    nimbus-theme
    ))

(dolist (package package-list)
    (unless (package-installed-p package)
        (package-install package)))

;;; packages.el ends here
