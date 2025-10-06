;;; config.el --- Configures the plugins

;;; Commentary:
;;; Runs after the package manager, config all the installed packages here

;;; Code:

;;


;; Built-in packages
(eldoc-mode 1)

(use-package savehist
  :ensure nil
  :init
  (savehist-mode))

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
  :hook (after-init-hook . global-flycheck-mode))


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

(use-package emacs
  :ensure nil ;; Built-in config
  :custom
  ;; `completion-at-point' is often bound to M-TAB.
  (tab-always-indent 'complete)

  ;; Emacs 30 and newer: Disable Ispell completion function.
  ;; Try `cape-dict' as an alternative.
  (text-mode-ispell-word-completion nil)

  ;; Hide commands in M-x which do not apply to the current mode.  Corfu
  ;; commands are hidden, since they are not used via M-x. This setting is
  ;; useful beyond Corfu.
  (read-extended-command-predicate #'command-completion-default-include-p))

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
