;;; lang/org --- ORG Mode config

;;; Commentary:
;;; No comments.

;;; Code:

(use-package org
  :ensure t
  :hook (org-mode-hook . org-indent-mode)

  :bind
    (:map org-mode-map
        ("C-k" . org-move-subtree-up)
        ("C-j" . org-move-subtree-down))

  :custom
    (org-todo-keywords '((sequence "TODO" "PLANNING" "DOING" "REVIEW" "ON HOLD" "|" "DONE")))
    (org-todo-keyword-faces
        '(("TODO" . org-warning)
        ("PLANNING" "green yellow")
        ("DOING" . org-agenda-clocking)
        ("REVIEW" . "yellow")
        ("ON HOLD" . "dim grey")
        ("DONE" . org-done))))

(provide 'org.el)
;;; org.el ends here
