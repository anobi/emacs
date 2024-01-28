;;; c_cpp.el --- C and C++ configuration layer

;;; Commentary:
;;; Config the language specific things here

;;; Code:

;; C & C++
(setq-default c-basic-offset 4 c-default-style "linux")

(require 'lsp)
(require 'cc-mode)
(require 'flycheck)

;; (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++14")))
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(defun my:save-and-compile()
  (interactive "")
  (save-buffer 0)
  (compile "make -k"))
(define-key c-mode-map "\C-c\C-c" 'my:save-and-compile)
(define-key c-mode-map "\C-c\C-k" 'recompile)


(provide 'c_cpp)
;;; c_cpp.el ends here
