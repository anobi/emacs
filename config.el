;; Evil
(require 'evil)
(evil-mode 1)

;; Ido
(require 'ido)
(ido-mode t)

;; Helm
(require 'helm)
(require 'helm-config)

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-c h") 'helm-command-prefix)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)

(setq helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t
      helm-ff-search-library-in-sexp t)

(helm-mode 1)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)