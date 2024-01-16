;;; lang/python --- Installs and sets up a python dev stuffs

;;; Commentary:
;;; No comments.

;;; Code:

(defvar python-packages '(
  lsp-pyright
  poetry
  pyvenv))

;; TODO: Replace with one installer that goes through all the lang modules
(dolist (package python-packages)
    (unless (package-installed-p package)
        (package-install package)))

;; Python
(require 'company)
(require 'flycheck)
(require 'lsp-mode)

(setq python-shell-interpreter "ipython3")

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
    (require 'lsp-pyright)
    (lsp))))  ; or lsp-deferred

(add-hook 'python-mode-hook (lambda ()
    (flycheck-mode 1)
    (delq 'python-pycompile flycheck-checkers)
    (setq flycheck-checker 'python-flake8
          flycheck-checker-error-threshold 900
          flycheck-flake8rc "~/.config/flake8"
          flycheck-flake8-maximum-line-length 120)))

(provide 'python.el)
;;; python.el ends here
