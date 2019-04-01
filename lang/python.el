;;; lang/python --- Installs and sets up a python dev stuffs

;;; Commentary:
;;; No comments.

;;; Code:

(defvar python-packages
  '(anaconda-mode
	company-anaconda
	pyvenv))

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
  '(add-to-list 'company-backends 'company-anaconda))

(setq python-shell-interpreter "ipython3")

(add-hook 'python-mode-hook (lambda ()
   (flycheck-mode 1)
   ;; (semantic-mode 1)
   (setq flycheck-checker 'python-flake8
         flycheck-checker-error-threshold 900
         flycheck-pylintrc "~/.pylintrc")))

(provide 'python.el)
;;; python.el ends here
