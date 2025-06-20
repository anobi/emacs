;;; interface.el --- Interface configs

;;; Commentary:
;;; Fonts, themes and such, config them heres
;;; Do not configure anything requiring packages here.
;;; This will load before the package manager

;;; Code:


;; Interface config

(use-package nimbus-theme
  :config (load-theme 'nimbus t))

(progn
  (global-display-line-numbers-mode 1)
  (global-hl-line-mode 1)
  (column-number-mode 1)
  (show-paren-mode 1))

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (menu-bar-mode -1)
      (scroll-bar-mode -1)
	  (fringe-mode 1)))

(setq-default display-line-numbers-type 'relative)

(defun set-indent-mode (tabs width)
  "Use spaces for indentation to TABS (either t or nil) with width of WIDTH."
  (setq-default
    indent-tabs-mode tabs
    tab-width width)
  (setq indent-line-function 'indent-relative))

(set-indent-mode nil 4)
(add-hook 'emacs-lisp-mode-hook
  (lambda ()
  (set-indent-mode nil 2)))

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      select-enable-clipboard t)

(setq enable-recursive-minibuffers t)

;; Shell settings
(setq explicit-shell-file-name (getenv "SHELL"))
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

(when (eq system-type 'darwin)
  (setq exec-path (append exec-path '("/usr/local/bin"))))

;; Fonts
(when (eq system-type 'gnu/linux)
  (set-frame-font "Monospace-8"))
(when (eq system-type 'darwin)
  (set-frame-font "Hack-11"))
(when (eq system-type 'windows-nt)
  (set-frame-font "Hack-10"))

(provide 'interface)

;;; interface.el ends here
