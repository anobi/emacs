;;; package --- Installs the plugins and stuff

;;; Commentary:
;;; No comments...

;;; Code:

(elpaca elpaca-use-package
  (elpaca-use-package-mode)
  (setq elpaca-use-package-by-default t))


;; TODO: Try elpaca or straight.el instead of package.el as package manager?
;; TODO: Other packages to check out:
;;       * Tempel to replace yasnippet
;;       * Dap-mode for debugging
;;       * Treemacs if I need a tree
(defvar package-list
  '(
    eldoc
    ggtags
    yasnippet
    xcscope
    doom-themes
    ))

;;(dolist (pkg package-list)
;;  (unless (package-installed-p package)
;;    (package-install package)))

;;; packages.el ends here
