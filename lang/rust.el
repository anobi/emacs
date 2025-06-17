;;; lang/rust --- Installs and sets up a rust dev env

;;; Commentary:
;;; No comments.

;;; Code:


(use-package rust-mode
  :ensure t)

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; Rust
(add-hook 'rust-mode-hook 'eglot-ensure)
;; TODO: fix?
;; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

;; (when (executable-find "rust-analyzer")
;;   (add-to-list 'eglot-server-programs
;;     '(rust-mode . (eglot-rust-analyzer "rust-analyzer"))))


(provide 'rust.el)
;;; rust.el ends here
