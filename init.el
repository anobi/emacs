;;; init.el --- Main init file, duh
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/interface")
(load "~/.emacs.d/packages")
(load "~/.emacs.d/config")
(load "~/.emacs.d/languages")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (mustang)))
 '(custom-safe-themes
   (quote
	("261dafb371d2d6e949a39849cf7672480662fb67f23822c6da18f0b457af2c7d" "e3bf16af35586816b824bea36188215319b1cceb208d3518700d876c4c1a9cc7" default)))
 '(package-selected-packages
   (quote
	(exec-path-from-shell cargo flycheck-rust racer rust-mode rust-playground markdown-mode dockerfile-mode yasnippet yapfify slime racket-mode quack pyvenv powerline-evil paredit mustang-theme moe-theme helm-projectile helm-gtags helm-cscope helm-company haskell-mode ggtags geiser flycheck cyberpunk-theme company-anaconda busybee-theme)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
