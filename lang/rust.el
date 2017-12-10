;;; lang/rust --- Installs and sets up a rust dev env

;;; Commentary:
;;; No comments.

;;; Code:

(defvar rust-packages
  '(rust-mode
	rust-playground
	flycheck-rust
	cargo
	racer))

(dolist (package rust-packages)
    (unless (package-installed-p package)
        (package-install package)))

(require 'rust-mode)
(require 'cargo)
(require 'racer)

;; Rust
(add-hook 'rust-mode-hook 'racer-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(provide 'rust.el)
;;; rust.el ends here
