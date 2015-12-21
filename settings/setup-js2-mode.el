(autoload 'js2-mode "js2-mode" nil t)

(add-hook 'js2-mode-hook
	  (lambda ()
	      (auto-complete-mode t)))

(provide 'setup-js2-mode)
