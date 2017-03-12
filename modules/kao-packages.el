(use-package which-key
  :ensure t
  :diminish which-key-mode
  :init
  (setq which-key-idle-delay 0.5)
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom))

(use-package ivy
  :ensure t
  :diminish ivy-mode
  :init
  (require 'counsel)
  (setq ivy-use-virtual-buffers t
        enable-recursive-minibuffers t
        ivy-count-format ""
        ivy-re-builders-alist
	'((read-file-name-internal . ivy--regex-fuzzy)
	  (t . ivy--regex-plus)))
  :config
  (ivy-mode 1)
  (counsel-projectile-on)
  :bind (("C-s" . swiper)
         ;;("C-<S>" . swiper-all)
         ("C-x C-f" . counsel-find-file))
)

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :init
  (setq projectile-indexing-method 'native
        projectile-enable-caching t
        projectile-completion-system 'ivy
        projectile-sort-order 'recentf)
  :config
  (projectile-global-mode)
  (kao/binding/project))

(use-package smex
  :ensure t
  :init
  (smex-initialize))

(use-package magit
  :ensure t
  :config
  (kao/binding/git))

;; popwin lets C-g close annoying kind of popups
(use-package popwin
  :ensure t
  :config
  (popwin-mode))

(use-package flx
  :ensure t
  :config
  (setq gc-cons-threshold 20000000))

(provide 'kao-packages)
