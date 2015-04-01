(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode 1)
(column-number-mode 1)
(show-paren-mode 1)

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

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)

(electric-pair-mode 1)

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
(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

(defun my:save-and-compile()
  (interactive "")
  (save-buffer 0)
  (compile "make -k"))
(define-key c-mode-map "\C-c\C-c" 'my:save-and-compile)

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
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'js2-mode)

(add-hook 'web-mode-hook 'autopair-mode)
(add-hook 'js2-mode-hook 'autopair-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)

(setq web-mode-disable-auto-pairing t)
(setq web-mode-enable-auto-quoting t)
(setq js2-highlight-level 3)



(require 'flycheck)
(flycheck-define-checker javascript-jslint-reporter
  "Javascript blah blah"
  :command ("jslint" "--terse" source)
  :error-patterns
  ((error line-start (1+ nonl) ":" line ":" column ":" (message) line-end))
  :modes (js-mode js2-mode))
(add-hook 'js-mode-hook (lambda()
	(flycheck-select-checker 'javascript-jslint-reporter)
	(flycheck-mode)))

(slime)
(shell)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(max-specpdl-size 11380))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
