;;; languages.el --- Configurations for programming languages

;;; Commentary:
;;; Config the language specific things here

;;; Code:

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook
         (python-mode . lsp-deferred)
         (c-mode-hook . lsp-deferred)
         (c++-mode-hook . lsp-deferred)
         (rust-mode . lsp-deferred)
  :commands lsp-deferred)

(use-package toml-mode
  :ensure t)

(load "~/.emacs.d/lang/lisp")
(load "~/.emacs.d/lang/c_cpp")
(load "~/.emacs.d/lang/python")
(load "~/.emacs.d/lang/rust")
(load "~/.emacs.d/lang/org")
(load "~/.emacs.d/lang/haskell")
(load "~/.emacs.d/lang/elixir")

;; TODO: Get the lang specific packages here
;; put them in a list and install them all in one place
;; instead of doing the install magic per file

;; Misc languages

(provide 'languages)
;;; languages.el ends here
