;;; lang/python --- Installs and sets up a python dev stuffs

;;; Commentary:
;;; No comments.

;;; Code:

(defvar python-packages
  '(anaconda-mode
	company-anaconda
	pony-mode
	pyvenv
	yapfify
    pylint))

;; TODO: Replace with one installer that goes through all the lang modules
(dolist (package python-packages)
    (unless (package-installed-p package)
        (package-install package)))

;; Python
(require 'anaconda-mode)
(require 'company)
(require 'flycheck)
(require 'pony-mode)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(setq-default py-shell-name "python")
(setq-default py-which-bufname "IPython")

; (setq flycheck-flake8rc "~/.config/flake8")
; (setq flycheck-flake8-maximum-line-length 120)
(setq py-split-window-on-execute t)
(setq py-smart-indentation t)
(setq py-python-command "python")

(add-hook 'python-mode-hook (lambda ()
   (flycheck-mode 1)
   (semantic-mode 1)
   (setq flycheck-checker 'python-pylint
         flycheck-checker-error-threshold 900
         flycheck-pylintrc "~/.pylintrc")))

(provide 'python.el)
;;; python.el ends here
