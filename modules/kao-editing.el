(setq tab-width 2)
(setq indent-tabs-mode nil)

(use-package evil
  :ensure t
  :config
  (evil-mode)
  (kao/binding/root)

  (use-package evil-leader
    :ensure t
    :init
    (evil-leader/set-leader "<SPC>")
    :config
    (global-evil-leader-mode))

  (use-package evil-escape
    :ensure t
    :diminish evil-escape-mode
    :bind ("M-<return>" . evil-escape)
    :config
    (evil-escape-mode))

  (use-package evil-surround
    :ensure t
    :diminish global-evil-surround-mode
    :config
    (global-evil-surround-mode)))

(use-package whitespace
  :diminish global-whitespace-mode
  :init
  (setq whitespace-style '(face empty tabs lines-tail trailing))
  (setq whitespace-line-column 100)

  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  :config
  (global-whitespace-mode))

(use-package auto-complete
  :diminish auto-complete-mode
  :init
  (setq ac-ignore-case nil)
  :config
  (ac-config-default))

(use-package company
  :ensure t
  :defer t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package expand-region
  :ensure t
  :defer t
  :init
  (setq expand-region-contract-fast-key "V"
        expand-region-reset-fast-key "r"))

(kao/binding/comment)
(kao/binding/search)
(kao/binding/visual)

(provide 'kao-editing)
