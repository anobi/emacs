;;; config.el --- Configures the plugins

;;; Commentary:
;;; Runs after the package manager, config all the installed packages here

;;; Code:


;; Evil
(require 'evil)
(evil-mode 1)

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

;; Paredit
(require 'paredit)
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Projectile
(require 'projectile)
(projectile-mode)
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
