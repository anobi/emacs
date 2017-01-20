;;; languages.el --- Configurations for programming languages

;;; Commentary:
;;; Config the language specific things here

;;; Code:


;; lisp

;; use different sbcl path for osx
(if (eq system-type 'darwin)
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "sbcl"))
;; slime
(require 'slime-autoloads)
(slime-setup '(slime-fancy))
(slime)


;; C & C++
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)

(require 'cc-mode)
(defun my:save-and-compile()
  (interactive "")
  (save-buffer 0)
  (compile "make -k"))
(define-key c-mode-map "\C-c\C-c" 'my:save-and-compile)
(define-key c-mode-map "\C-c\C-k" 'recompile)


;; Python
(setq-default py-shell-name "ipython3")
(setq-default py-which-bufname "IPython")
(setq py-split-window-on-execute t)
(setq py-smart-indentation t)
(setq py-python-command "python3")
