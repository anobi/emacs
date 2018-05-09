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


;;; utils.el ends here
