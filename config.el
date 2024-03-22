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

(use-package winner
  :custom
  (winner-mode 1))


(use-package savehist
  :init
  (savehist-mode))

(electric-pair-mode t)

;; Projectile
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Corfu
;; TODO: Move this to completion module?
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-quit-no-match t)
  (corfu-quit-at-boundary 'separator)
  (corfu-cycle nil)
  (corfu-preselect 'prompt)

  :bind
  (:map corfu-map
        ("C-n" . corfu-next)
        ("C-p" . corfu-previous))

  :init
  (global-corfu-mode))

(use-package emacs
  :init
  (defun crm-indicator (args)
    (cons (format "[CRM%s] %s"
                  (replace-regexp-in-string
                   "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" ""
                   crm-separator)
                  (car args))
          (cdr args)))
  (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

  (setq minibuffer-prompt-properties
        '(read-only t cursor-intangible t face minibuffer-prompt))
  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)
  
  (setq completion-cycle-threshold 3)
  (setq tab-always-indent 'complete)
  (setq enable-recursive-minibuffers t))

;;; config.el ends here
