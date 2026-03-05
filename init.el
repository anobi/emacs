;;; init.el --- Main init file, duh
;;; Commentary:
;;; Code:


(load "~/.emacs.d/elpaca_bootstrap")
(load "~/.emacs.d/interface")
(load "~/.emacs.d/minibuffer")
(load "~/.emacs.d/config")
(load "~/.emacs.d/languages")
(load "~/.emacs.d/utils") 


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(exec-path-from-shell vertico)))
