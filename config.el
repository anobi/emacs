;;; config.el --- Configures the plugins

;;; Commentary:
;;; Runs after the package manager, config all the installed packages here

;;; Code:

;;


;; Built-in packages
(savehist-mode 1)


;; Packages from repositories
(use-package exec-path-from-shell
  :ensure (:host github :repo "purcell/exec-path-from-shell")
  :config
    (if (eq system-type 'darwin)
      (exec-path-from-shell-initialize)))
  
;; (require 'exec-path-from-shell)
 
;; Evil
(use-package evil
  :config
  (evil-mode 1))


(electric-pair-mode t)

;; Projectile
(use-package projectile
  :config
    (projectile-mode +1)
    (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

;; Flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

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

  :config
  (global-corfu-mode))

(use-package
 emacs
 :ensure nil ;; Built-in config
 :init
 (defun crm-indicator (args)
   (cons
    (format "[CRM%s] %s"
            (replace-regexp-in-string
             "\\`\\[.*?]\\*\\|\\[.*?]\\*\\'" "" crm-separator)
            (car args))
    (cdr args)))
 (advice-add #'completing-read-multiple :filter-args #'crm-indicator)

 (setq minibuffer-prompt-properties
       '(read-only t cursor-intangible t face minibuffer-prompt))
 (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

 (setq completion-cycle-threshold 3)
 (setq tab-always-indent 'complete)
 (setq enable-recursive-minibuffers t))

(use-package
 cape
 :init
 (add-to-list 'completion-at-point-functions #'cape-dabbrev)
 (add-to-list 'completion-at-point-functions #'cape-file)
 (add-to-list 'completion-at-point-functions #'cape-elisp-block))

(use-package eat
  :ensure (:host "https://codeberg.org/akib/emacs-eat")
  :init (add-hook 'eshell-load-hook #'eat-eshell-mode))



;;; config.el ends here
