;;; lang/rust --- Installs and sets up a rust dev env

;;; Commentary:
;;; No comments.

;;; Code:

(defvar rust-packages '(
  rust-mode
  toml-mode
	rust-playground
	flycheck-rust
	cargo
	racer))

(dolist (package rust-packages)
    (unless (package-installed-p package)
        (package-install package)))

(require 'rust-mode)
(require 'cargo)
(require 'toml-mode)
;; (require 'racer)

(use-package rust-mode
  :hook (rust-mode . lsp))

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

;; Rust
(add-hook 'rust-mode-hook #'eglot-ensure)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(provide 'rust.el)
;;; rust.el ends here
