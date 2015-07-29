(show-paren-mode t)

(require 'projectile)
(projectile-global-mode t)
(fullscreen-mode t)
(column-number-mode t)

(require 'wrap-region)
(wrap-region-global-mode t)

(require 'git-gutter)
(global-git-gutter-mode t)

(provide 'global-modes)
