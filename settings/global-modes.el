(show-paren-mode t)

(require 'yasnippet)
(yas-global-mode 1)

(require 'autopair)
(autopair-global-mode t)

(require 'projectile)
(projectile-global-mode t)
(fullscreen-mode t)
(column-number-mode t)

(require 'wrap-region)
(wrap-region-global-mode t)

(require 'git-gutter)
(global-git-gutter-mode t)

; (require 'helm)
; (helm-mode t)



(provide 'global-modes)