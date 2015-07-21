(custom-set-variables
 '(coffee-args-compile (quote ("-c" "--bare")))
 '(coffee-tab-width 2)
)

(eval-after-load "coffee-mode"
  '(progn
     (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
     (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)))

; (require 'flymake-coffee)
; (add-hook 'coffee-mode-hook (lambda ()
; 	(auto-complete-mode)
; 	(flymake-coffee-load)
; 	))

(provide 'setup-coffee-mode)