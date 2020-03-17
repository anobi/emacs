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
(add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
(add-hook 'lisp-mode-hook 'evil-paredit-mode)


;; Ido
(require 'ido)
(ido-mode t)

;; Helm
(require 'helm)
(require 'helm-config)
(require 'company)
(eval-after-load 'company
  '(progn
	 (define-key company-mode-map (kbd "<C-tab>") 'helm-company)
	 (define-key company-active-map (kbd "<C-tab>") 'helm-company)))

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

;; Company
(add-hook 'after-init-hook 'global-company-mode)

(defvar company-tooltip-align-annotations t)
(defvar company-minimum-prefix-length 1)
(defvar company-dabbrev-downcase 0)
(defvar company-idle-delay 0)
(defun tab-indent-or-complete nil
  "Tab completes stuff."
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not 'yas-minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

(global-set-key [backtab] 'tab-indent-or-complete)


;;; config.el ends here
