(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(set-language-environment "UTF-8")

;; free up the option key for special characters
(setq ns-alternate-modifier 'none)
(setq ns-command-modifier 'meta)
(setq ns-function-modifier 'super)

(setq ring-bell-function 'ignore)
(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq ns-pop-up-frames nil)
;; place auto-save files in /tmp
(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(kao/binding/home)

(provide 'kao-init)
