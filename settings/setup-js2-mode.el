(autoload 'js2-mode "js2-mode" nil t)
(require 'js3-refactor)
(js3r-add-keybindings-with-prefix "C-c C-m")

(add-hook 'js2-mode-hook
	  (lambda ()
	      (auto-complete-mode t)
(add-hook 'js2-mode-hook #'js2-refactor-mode)))

(provide 'setup-js2-mode)
