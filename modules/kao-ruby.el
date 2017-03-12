(use-package ruby-mode
  :ensure t
  :defer t
  :init
  (setq ruby-program "/usr/local/opt/rbenv/shims/ruby")
  (setq ruby-bounce-deep-indent t)
  (setq ruby-hanging-brace-indent-level 2)
  (setq ruby-insert-encoding-magic-comment nil)
  :config
  (autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)

  (use-package haml-mode
    :ensure t
    :defer t
    :mode
    ("\\.haml$" . haml-mode))

  (use-package yaml-mode
    :ensure t
    :defer t
    :mode
    ("\\.yml$" . yaml-mode))

  (use-package rspec-mode
    :ensure t
    :defer t
    :config
    (setq rspec-use-rake-flag nil))

  :mode (("\\(Rake\\|Thor\\|Guard\\|Gem\\|Cap\\|Vagrant\\|Berks\\|Pod\\|Puppet\\)file\\'" . ruby-mode)
         ("\\.\\(rb\\|rabl\\|ru\\|builder\\|rake\\|thor\\|gemspec\\|jbuilder\\)\\'" . ruby-mode))
  :interpreter "ruby")

(provide 'kao-ruby)
