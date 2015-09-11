(add-hook 'clojure-mode-hook
	  (lambda ()
            (rainbow-delimiters-mode t)
            (paredit-mode)
            (cider-mode)))

(provide 'setup-clojure-mode)
