;; auto refresh buffers
(global-auto-revert-mode 1)
;; also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(kao/binding/file)
(kao/binding/buffer)
(kao/binding/window)

(provide 'kao-window-and-buffer)
