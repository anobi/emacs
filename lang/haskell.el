;;; lang/haskell --- Installs and sets up a Haskell dev env

;;; Commentary:
;;; No comments.

;;; Code:

(defvar haskell-packages '(
  haskell-mode
))

(dolist (package haskell-packages)
    (unless (package-installed-p package)
        (package-install package)))

(require 'haskell-mode)
  
;;; haskell.el ends here
