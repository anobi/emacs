;;; lang/python --- Installs and sets up a python dev stuffs

;;; Commentary:
;;; No comments.

;;; Code:

(defvar python-packages
  '(anaconda-mode
	company-anaconda
	pyvenv
	yapfify))

;; TODO: Replace with one installer that goes through all the lang modules
(dolist (package python-packages)
    (unless (package-installed-p package)
        (package-install package)))

;; Python
(require 'anaconda-mode)
(require 'company)
(require 'flycheck)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(eval-after-load "company"
  '(add-to-list 'company-backends 'elpy-company-backend))

(setq-default py-shell-name "python")
(setq-default py-which-bufname "IPython")

(setq flycheck-flake8rc "~/.config/flake8")
(setq flycheck-flake8-maximum-line-length 120)
(setq py-split-window-on-execute t)
(setq py-smart-indentation t)
(setq py-python-command "python")

(provide 'python.el)
;;; python.el ends here
