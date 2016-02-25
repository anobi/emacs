;;; package -- Summary:
;;; Commentary:
;;; Code:

(if (display-graphic-p)
  (progn
    (tool-bar-mode 0)
    (menu-bar-mode 0)
    (scroll-bar-mode 0)
    (global-linum-mode 1)
    (column-number-mode 1)
    (show-paren-mode 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

;; Fonts and such
(when (eq system-type 'gnu/linux)
    (set-frame-font "Monospace-8"))
(when (eq system-type 'darwin)
    (set-frame-font "Share-TechMono-11"))
(when (eq system-type 'windows-nt)
  (setq tramp-default-method "plink")
    (set-frame-font "Consolas-12"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)


(require 'cl)
(require 'cc-mode)

(require 'ido)
(ido-mode t)

(require 'evil)
(evil-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(electric-pair-mode 1)

(autoload 'enable-paredit-mode "paredit" "Paredit mode" t)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'racket-mode-hook #'enable-paredit-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)


;;
;; C/C++ stuff
;;

(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include"))
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(define-key global-map (kbd "C-c ;") 'iedit-mode)

(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(semantic-mode 1)
(global-semantic-idle-scheduler-mode 1)

(defun my:save-and-compile()
  (interactive "")
  (save-buffer 0)
  (compile "make -k"))
(define-key c-mode-map "\C-c\C-c" 'my:save-and-compile)
(define-key c-mode-map "\C-c\C-k" 'recompile)

;;
;; Omnisharp
;;

(setq omnisharp-server-executable-path
      "/usr/local/bin/omnisharp")

;;
;; Python stuff
;;

(require 'python-mode)
(setq-default py-shell-name "ipython3")
(setq-default py-which-bufname "IPython")
(setq py-split-window-on-execute t)
(setq py-smart-indentation t)
(setq py-python-command "python3")

;;
;; lisp stuff
;;

;; use different sbcl path for osx
(if (eq system-type 'darwin)
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "sbcl"))
;; slime
(require 'slime-autoloads)
(slime-setup '(slime-fancy))

;;
;; haskell stuff
;;
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;;
;; web stuff (html, js, etc)
;;
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)) 

(add-hook 'web-mode-hook 'autopair-mode)
(add-hook 'js2-mode-hook 'autopair-mode)

(setq web-mode-disable-auto-pairing t)
(setq web-mode-enable-auto-quoting t)
(setq js2-highlight-level 3)

(slime)
(shell)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (inkpot)))
 '(custom-safe-themes
   (quote
	("2a04368d8ea8e8409a9f95bafaa4770de4562ba014fcc9a08621943f35e63eba" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "3038a172e5b633d0b1ee284e6520a73035d0cb52f28b1708e22b394577ad2df1" default)))
 '(max-specpdl-size 11380)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
