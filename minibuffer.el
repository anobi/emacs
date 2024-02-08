;;; minibuffer.el --- Configures autocompletion

;;; Commentary:
;;; Install and configure minibuffer completion (formerly known as SMOCE, now VMOCE?)

;;; Code:


(defvar minibuffer-packages '(
  vertico
  marginalia
  orderless
  consult
  embark
  embark-consult
))

(dolist (package minibuffer-packages)
    (unless (package-installed-p package)
        (package-install package)))


;; Enable and configure Vertico
(use-package vertico
  :init
  (vertico-mode))

(use-package marginalia
  :bind (:map minibuffer-local-map
              ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))

(use-package consult
  :ensure t

  :hook
  (completion-list-mode . consult-preview-at-point-mode)

  :init
  (setq register-preview-delay 0.5
        register-preview-function #'consult-register-window)
  (advice-add #'register-preview :override #'consult-register-window)

  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-funtion #'consult-xref)

  :config)
  

(use-package embark
  :ensure t
  
  :bind
  (("C-." . embark-act)
   ("C-;" . embark-dwim)
   ("C-h B" . embark-bindings))

  :init
  (setq prefix-help-command #'embark-prefix-help-command)

  :config
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*'"
                 nil
                 (window-parameters (mode-line-format . none)))))

(use-package embark-consult
  :ensure t
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))

      ;; Enable and configure Orderless
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(substring orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))
   
;;; minibuffer.el ends here
