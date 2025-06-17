;;; lang/python --- Installs and sets up a python dev stuffs

;;; Commentary:
;;; No comments.

;;; Code:


;; Python

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt --InteractiveShell.display_page=True")

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
    (require 'lsp-pyright)
    (lsp))))  ; or lsp-deferred

(use-package poetry
  :ensure t)

(use-package pyvenv
  :ensure t)

(add-hook 'python-mode-hook (lambda ()
    (flycheck-mode 1)
    (delq 'python-pycompile flycheck-checkers)
    (setq flycheck-checker 'python-ruff
          flycheck-checker-error-threshold 900)))

(provide 'python.el)
;;; python.el ends here
 
