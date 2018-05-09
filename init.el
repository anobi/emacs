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
(load "~/.emacs.d/utils")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (doom-vibrant)))
 '(custom-safe-themes
   (quote
	("50e9ef789d599d39a9ecb6e983757306ea19198d1a8f182be7fd3242b613f00e" "242ed4611e9e78142f160e9a54d7e108750e973064cee4505bfcfc22cc7c61b1" "013c62a1fcee7c8988c831027b1c38ae215f99722911b69e570f21fc19cb662e" "891debfe489c769383717cc7d0020244a8d62ce6f076b2c42dd1465b7c94204d" "bbb4a4d39ed6551f887b7a3b4b84d41a3377535ccccf901a3c08c7317fad7008" "a866134130e4393c0cad0b4f1a5b0dd580584d9cf921617eee3fd54b6f09ac37" "0598de4cc260b7201120b02d580b8e03bd46e5d5350ed4523b297596a25f7403" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" "aa0a998c0aa672156f19a1e1a3fb212cdc10338fb50063332a0df1646eb5dfea" "5715d3b4b071d33af95e9ded99a450aad674e308abb06442a094652a33507cd2" "c5d320f0b5b354b2be511882fc90def1d32ac5d38cccc8c68eab60a62d1621f2" "723e48296d0fc6e030c7306c740c42685d672fd22337bc84392a1cf92064788a" "53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "4597d1e9bbf1db2c11d7cf9a70204fa42ffc603a2ba5d80c504ca07b3e903770" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "261dafb371d2d6e949a39849cf7672480662fb67f23822c6da18f0b457af2c7d" "e3bf16af35586816b824bea36188215319b1cceb208d3518700d876c4c1a9cc7" default)))
 '(midnight-mode t)
 '(package-selected-packages
   (quote
	(neotree doom-themes flymd gh-md markdown-mode+ evil-smartparens smartparens docker docker-compose-mode magit magit-find-file company-jedi pony-mode pylint python-django python-docstring python-environment exec-path-from-shell cargo flycheck-rust racer rust-mode rust-playground markdown-mode dockerfile-mode yasnippet yapfify slime racket-mode quack pyvenv powerline-evil paredit mustang-theme moe-theme helm-projectile helm-gtags helm-cscope helm-company haskell-mode ggtags geiser flycheck cyberpunk-theme company-anaconda busybee-theme)))
 '(pyvenv-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
