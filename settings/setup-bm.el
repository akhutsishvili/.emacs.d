(require 'bm)

(global-set-key (kbd "<C-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)


(setq bm-marker 'bm-marker-right)
(setq bm-in-lifo-order t) ; cicle bookmarks
(setq temporary-bookmark-p t)
