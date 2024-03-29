;;; lang/rust --- Installs and sets up a rust dev env

;;; Commentary:
;;; No comments.

;;; Code:

(defvar rust-packages '(
  rust-mode
  toml-mode
	rust-playground
	flycheck-rust
	cargo))

(dolist (package rust-packages)
    (unless (package-installed-p package)
        (package-install package)))

(require 'eglot)
(require 'rust-mode)
(require 'cargo)
(require 'toml-mode)

(use-package rust-mode
  :hook (rust-mode . lsp))

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; Rust
(add-hook 'rust-mode-hook 'eglot-ensure)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(when (executable-find "rust-analyzer")
  (add-to-list 'eglot-server-programs
    '(rust-mode . (eglot-rust-analyzer "rust-analyzer"))))


(provide 'rust.el)
;;; rust.el ends here
