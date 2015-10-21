;(setq put 'scroll-left 'disabled nil)
;(setq put 'upcase-region 'disabled nil)
(blink-cursor-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(custom-set-variables
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 )

(set-cursor-color "#A80F0F")
(provide 'appearance)
