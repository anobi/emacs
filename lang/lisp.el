;;; lisp.el --- Configuration for LISP family of languages

;;; Commentary:
;;; Blabla bla

;;; Code:

;; Packages

(defvar lispy-packages
  '(slime
    paredit
	racket-mode
    geiser
    quack))

(dolist (package lispy-packages)
    (unless (package-installed-p package)
        (package-install package)))

;; Paredit
(require 'paredit)
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Lisp
;; use different sbcl path for osx
(if (eq system-type 'darwin)
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "sbcl"))
;; slime
(require 'slime-autoloads)
(slime-setup '(slime-fancy))
(slime)

;; Scheme

(provide 'lisp)
;;; lisp.el ends here
