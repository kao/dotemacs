(defun kao/binding/root ()
  "Define bindings directly available through leader"
  (evil-leader/set-key
    "SPC" 'ivy-switch-buffer
    ":" 'counsel-M-x))

(defun kao/binding/buffer ()
  "Define bindings to interact with buffers"
  (which-key-add-key-based-replacements "SPC b" "buffer")
  (evil-leader/set-key
  "b b" 'ivy-switch-buffer
  "b p" 'counsel-projectile-switch-to-buffer
  "b d" 'kill-this-buffer
  "b D" 'kill-buffer
  "b e" 'eval-buffer
  "b w" 'kill-buffer-and-window)

  (global-set-key (kbd "M-<left>") 'previous-buffer)
  (global-set-key (kbd "M-<right>") 'next-buffer))

(defun kao/binding/comment ()
  "Define bindings to comment"
  (which-key-add-key-based-replacements "SPC c" "comment")
  (evil-leader/set-key
   "c c" 'comment-dwim
   "c l" 'comment-line))

(defun kao/binding/file ()
  "Define bindings to interact with files"
  (which-key-add-key-based-replacements "SPC f" "file")
  (evil-leader/set-key
   "f y" 'kao/get-current-file-path))

(defun kao/binding/git ()
  "Define bindings to interact with git"
  (which-key-add-key-based-replacements "SPC g" "git")
  (evil-leader/set-key
    "g b" 'magit-blame
    "g l" 'magit-log-current
    "g L" 'magit-log
    "g s" 'magit-status))

(defun kao/binding/home ()
  "Define bindings to interact with configuration"
  (which-key-add-key-based-replacements "SPC h" "home")
  (evil-leader/set-key
    "h i" 'kao/init/open
    "h r" 'kao/init/reload))

(defun kao/binding/project ()
  "Define bindings to interact with the projects"
  (which-key-add-key-based-replacements "SPC p" "project")
  (evil-leader/set-key
    "p b" 'counsel-projectile-switch-to-buffer
    "p f" 'counsel-projectile-find-file
    "p i" 'projectile-invalidate-cache
    "p p" 'counsel-projectile-switch-project)
  (global-set-key (kbd "M-t") 'counsel-projectile-find-file))

(defun kao/binding/search ()
  "Define bindings to search things"
  (which-key-add-key-based-replacements "SPC s" "search")
  (evil-leader/set-key
    "s j" 'counsel-projectile-ag
    "s p" 'ag-project))

(defun kao/binding/visual ()
  "Define bindings to expand visual features"
  (which-key-add-key-based-replacements "SPC v" "visual")
  (evil-leader/set-key
    "v e" 'er/expand-region))

(defun kao/binding/window ()
  "Define bindings to interact with windows"
  (which-key-add-key-based-replacements "SPC w" "window")
  (evil-leader/set-key
    "w /" 'split-window-right
    "w -" 'split-window-below
    "w d" 'delete-window)
  (global-set-key (kbd "S-<up>") 'windmove-up)
  (global-set-key (kbd "S-<down>") 'windmove-down)
  (global-set-key (kbd "S-<left>") 'windmove-left)
  (global-set-key (kbd "S-<right>") 'windmove-right))

(provide 'kao-binding)
