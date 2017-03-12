(setq inhibit-startup-screen t)
;; old good fullscreen
(setq ns-use-native-fullscreen nil)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode t)
(global-linum-mode t)

(use-package doom-themes
  :diminish doom-buffer-mode
  :init
  (require 'doom-nlinum)
  ;; Settings (defaults)
  (setq doom-enable-bold t  ; if nil, bolding are universally disabled
        doom-enable-italic t  ; if nil, italics are universally disabled

      ;; doom-one specific settings
      doom-one-brighter-modeline nil
      doom-one-brighter-comments nil)
  :config
  (load-theme 'doom-one t)
  ;; brighter source buffers (that represent files)
  (add-hook 'find-file-hook 'doom-buffer-mode-maybe)
  ;; if you use auto-revert-mode
  (add-hook 'after-revert-hook 'doom-buffer-mode-maybe)
  ;; you can brighten other buffers (unconditionally) with:
  (add-hook 'ediff-prepare-buffer-hook 'doom-buffer-mode)

  ;; brighter minibuffer when active
  (add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer))

(provide 'kao-ui)
