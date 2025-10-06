;;; lang/org --- ORG Mode config

;;; Commentary:
;;; No comments.

;;; Code:


(use-package org
  :mode (("\\.org$" . org-mode))
  :ensure nil  ;; Use the built-in org mode
  :hook (org-mode-hook . org-indent-mode)
  :config
    (setq org-todo-keywords '((sequence "TODO" "PLANNING" "DOING" "REVIEW" "ON HOLD" "|" "DONE")))
    (setq org-todo-keyword-faces
        '(("TODO" . org-warning)
        ("PLANNING" "green yellow")
        ("DOING" . org-agenda-clocking)
        ("REVIEW" . "yellow")
        ("ON HOLD" . "dim grey")
        ("DONE" . org-done))))

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org-notes/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))

(provide 'org.el)
;;; org.el ends here
