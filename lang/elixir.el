;;; lang/elixir.el --- Installs and sets up a rust dev env

;;; Commentary:
;;; No comments.

;;; Code:


(defvar elixir-packages '(
    elixir-ts-mode))


(dolist (package elixir-packages)
    (unless (package-installed-p package)
        (package-install package)))


(use-package elixir-ts-mode
    :ensure t
    :straight (:type built-in)
    :mod (("\\.ex\\'" . elixir-ts-mode)
          ("\\.exs\\'" . elixir-ts-mode)
          ("\\.mix.lock\\'" . elixir-ts-mode)))


; Also do M-x elixir-ts-install-grammar yes?? Or is it unnecessary to run with use-package?


(provide 'elixir.el)
;;; elixir.el ends here
