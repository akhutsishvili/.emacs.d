(show-paren-mode t)

(require 'projectile)
(projectile-global-mode t)
(fullscreen-mode t)
(column-number-mode t)

(require 'wrap-region)
(wrap-region-global-mode t)

(require 'git-gutter)
(global-git-gutter-mode t)


; after reopening file moves you to same place
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/saved-places")
(setq save-place-forget-unreadable-files nil)

(provide 'global-modes)
