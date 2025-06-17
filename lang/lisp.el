;;; lisp.el --- Configuration for LISP family of languages

;;; Commentary:
;;; Blabla bla

;;; Code:

;; Packages


(use-package slime
  :init (require 'slime-autoloads))

;; Paredit
;; Disabled until I can figure out whats wrong with the config
;; (use-package paredit
;;   :hook ((emacs-lisp-mode-hook . paredit-mode)
;;     (eval-expression-minibuffer-setup-hook . paredit-mode)
;;     (ielm-mode-hook . paredit-mode)
;;     (lisp-mode-hook . paredit-mode)
;;     (lisp-interaction-mode-hook. paredit-mode)
;;     (slime-repl-mode-hook . paredit-mode)
;;     (scheme-mode-hook . paredit-mode)))

;; Lisp
;; use different sbcl path for osx
(if (eq system-type 'darwin)
  (setq inferior-lisp-program "/opt/homebrew/bin/sbcl")
  (setq inferior-lisp-program "sbcl"))

;; slime
;(use-package slime-autoloads
  ;:config ((slime-setup '(slime-fancy))
           ;(slime)))


;; Scheme
(use-package racket-mode)
(use-package geiser)

(provide 'lisp)
;;; lisp.el ends here
