(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(setq use-package-always-ensure t)

;; customizations
(add-to-list 'load-path "~/.emacs.d/modules")

(load "kao-fun")
(load "kao-binding")
(load "kao-init")
(load "kao-ui")
(load "kao-window-and-buffer")
(load "kao-packages")
(load "kao-editing")
(load "kao-alias")
(load "kao-ruby")
