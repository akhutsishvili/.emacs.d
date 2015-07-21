; Load the default configuration
(require 'auto-complete-config)
(ac-config-default)
; Make sure we can find the dictionaries
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
; Use dictionaries by default
(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
(global-auto-complete-mode t)
; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)
; case sensitivity is important when finding matches
(setq ac-ignore-case nil)


(provide 'auto-complete-config)