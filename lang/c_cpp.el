;;; c_cpp.el --- C and C++ configuration layer

;;; Commentary:
;;; Config the language specific things here

;;; Code:

;; C & C++
(setq-default c-basic-offset 4 c-default-style "linux")

(require 'cc-mode)

(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++14")))

(defun my:save-and-compile()
  (interactive "")
  (save-buffer 0)
  (compile "make -k"))
(define-key c-mode-map "\C-c\C-c" 'my:save-and-compile)
(define-key c-mode-map "\C-c\C-k" 'recompile)


(provide 'c_cpp)
;;; c_cpp.el ends here
