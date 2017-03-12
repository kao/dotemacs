(defun kao/init/open ()
  "Open init.el"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun kao/init/reload ()
  (interactive)
  (load-file "~/.emacs.d/init.el")
  (message "init.el reloaded!"))

(defun kao/get-current-file-path ()
  "Add to the clipboard the current file path"
  (interactive)
  (setq file-path (buffer-file-name))
  (shell-command (concat "echo " file-path " | pbcopy")))

(provide 'kao-fun)
