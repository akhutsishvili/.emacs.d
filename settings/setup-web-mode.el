;; mode specific key bindings
(global-set-key (kbd "C-\{") (lambda ()
                               (interactive)
                               (insert "{{}}")
                               (backward-char)
                               (backward-char)))

(custom-set-variables
	'(web-mode-enable-auto-expanding t)
 	'(web-mode-enable-current-element-highlight t)
 	'(web-mode-markup-indent-offset 4)
    '(web-mode-css-indent-offset 4)
    '(web-mode-code-indent-offset 4)
    '(web-mode-indent-style 4)
 )
