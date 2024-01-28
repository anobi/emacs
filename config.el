;;; config.el --- Configures the plugins

;;; Commentary:
;;; Runs after the package manager, config all the installed packages here

;;; Code:

;;
(require 'exec-path-from-shell)
(if (eq system-type 'darwin)
	(exec-path-from-shell-initialize))

;; Evil
(require 'evil)
(evil-mode 1)

;; Ido
(require 'ido)
(ido-mode t)

;; Helm
(require 'helm)
(electric-pair-mode t)


;; Projectile
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(defvar projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)

(defvar helm-autoresize-max-height 0)
(defvar helm-autoresize-min-height 20)
(defvar helm-split-window-in-side-p t)
(defvar helm-move-to-line-cycle-in-source t)
(defvar helm-ff-search-library-in-sexp t)
(defvar helm-M-x-fuzzy-match t)
(defvar helm-buffers-fuzzy-matching t)
(defvar helm-recentf-fuzzy-match t)

(helm-autoresize-mode 1)
(helm-mode 1)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Corfu
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-quit-no-match t)
  (corfu-quit-at-boundary 'separator)
  :init
  (global-corfu-mode))
(use-package emacs
  :init
  (setq completion-cycle-threshold 3)
  (setq tab-always-indent 'complete))

;;; config.el ends here
