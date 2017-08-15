;;; interface.el --- Interface configs

;;; Commentary:
;;; Fonts, themes and such, config them heres

;;; Code:


;; Interface config

(progn
  (global-linum-mode 1)
  (column-number-mode 1)
  (show-paren-mode 1))

(if (display-graphic-p)
  (progn
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    (scroll-bar-mode 0)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(setq enable-recursive-minibuffers t)

;; Shell settings
(setq explicit-shell-file-name (getenv "SHELL"))
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))
(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

;; Fonts
(when (eq system-type 'gnu/linux)
    (set-frame-font "Monospace-8"))
(when (eq system-type 'darwin)
    (set-frame-font "Hack-11"))
(when (eq system-type 'windows-nt)
    (set-frame-font "Hack-10"))
