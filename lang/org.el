;;; lang/org --- ORG Mode config

;;; Commentary:
;;; No comments.

;;; Code:

(defvar org-packages
  '(org))

;; TODO: Install these in packages.el
;; just get all the lang packages in packages.el, iterate and install
(dolist (package org-packages)
    (unless (package-installed-p package)
        (package-install package)))

(require 'org)

(add-hook 'org-mode-hook 'org-indent-mode)

(setq org-todo-keywords '((sequence "TODO" "PLANNING" "DOING" "REVIEW" "ON HOLD" "|" "DONE")))
(setq org-todo-keyword-faces
	  '(("TODO" . org-warning)
    ("PLANNING" "green yellow")
		("DOING" . org-agenda-clocking)
		("REVIEW" . "yellow")
    ("ON HOLD" . "dim grey")
		("DONE" . org-done)))

(provide 'org.el)
;;; org.el ends here
