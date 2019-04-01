;;; utils.el --- Custom tools and functionality and stuff

;;; Commentary:
;;; All sorts of stuffs and things


;;; Code:

(defun copy-current-filepath-to-clipboard ()
  "Copy the full path of the file open in current buffer."
  (interactive)
  (let ((select-enable-clipboard t)
		(filepath (if (equal major-mode 'dired-mode)
					  default-directory
					(buffer-file-name))))
	(when filepath
	  (kill-new filepath))
	(message filepath)))

(defun python-add-breakpoint ()
  "Insert a python debugger breakpoint."
  (interactive)
  (progn
	(end-of-line)
	(newline-and-indent)
	(insert "import ipdb; ipdb.set_trace()")
	(save-buffer)))

(defun python-kill-breakpoint ()
  "Kill python breakpoint at line, if a breakpoint exists."
  (interactive)
  (progn)
  (let (bds begin end)
	(setq bds (bounds-of-thing-at-point 'symbol))
	(setq begin (line-beginning-position))
	(setq end (line-end-position))
	(when (string= (thing-at-point 'line t) "import ipdb; ipdb.set_trace()")
		(beginning-of-line)
		(kill-line)
		(save-buffer))))

;;; utils.el ends here
