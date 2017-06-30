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
(eval-after-load 'company
  '(progn
	 (define-key company-mode-map (kbd "<C-tab>") 'helm-company)
	 (define-key company-active-map (kbd "<C-tab>") 'helm-company)))

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(setq helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t
      helm-ff-search-library-in-sexp t)

(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t
	  helm-recentf-fuzzy-match t)

(helm-autoresize-mode 1)
(helm-mode 1)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)
(defun tab-indent-or-complete ()
  (interactive)
  (if (minibufferp)
      (minibuffer-complete)
    (if (or (not yas-minor-mode)
            (null (do-yas-expand)))
        (if (check-expansion)
            (company-complete-common)
          (indent-for-tab-command)))))

(global-set-key [backtab] 'tab-indent-or-complete)

;; Slime REPL
(add-hook 'slime-mode-hook 'electric-pair-mode)
(add-hook 'slime-mode-hook 'paredit-mode)

;;; config.el ends here
