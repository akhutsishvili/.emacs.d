;;;;;;; describe bindins with M-x describe-bindings
;;;;;;; check bindings of command with M-x where-is <COMMAND>

<<<<<<< HEAD
;; multiple cursors config
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
=======
; multiple cursors config
; (require 'multiple-cursors)
; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
; (global-set-key (kbd "C->") 'mc/mark-next-like-this)
; (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
>>>>>>> 257883caf16f9c1cd84a32c48afe9e4701f2037f

(require 'yasnippet)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c C-y") 'yas-expand)

(require 'expand-region)
<<<<<<< HEAD
(global-set-key (kbd "C-@") 'er/expand-region)

(require 'mark-multiple)
(global-set-key (kbd "C-!") 'mark-next-like-this)
=======
(global-set-key (kbd "C-=") 'er/expand-region)
>>>>>>> 257883caf16f9c1cd84a32c48afe9e4701f2037f

(global-set-key (kbd "C-\-") (lambda () (interactive)(insert "->"))) ;; shortcut for ->
(global-set-key [(control h)] 'delete-backward-char) ;; use C-h as backspace
(global-set-key (kbd "C-x K") 'nuke-all-buffers)
(global-set-key (kbd "C-x C-b") 'ibuffer) ;use ibuffer insted of regular buffer list
(global-set-key [(control tab)] 'other-window)

(require 'fullscreen-mode)
(global-set-key (kbd "<f11>") 'fullscreen-mode-fullscreen)

(global-set-key (kbd "<f1>") 'occur)
(global-set-key (kbd "<f12>") 'menu-bar-mode)

(require 'browse-kill-ring)
(global-set-key (kbd "<f5>") 'browse-kill-ring)

(global-set-key (kbd "C-c C-r") 'comment-or-uncomment-region)

<<<<<<< HEAD
;; ace jump config
=======
; ace jump config
>>>>>>> 257883caf16f9c1cd84a32c48afe9e4701f2037f
(require 'ace-jump-mode)
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
(define-key global-map (kbd "M-j") 'ace-jump-line-mode)


; dynamic file name completion with \M-x
(autoload 'comint-dynamic-complete-filename "comint" nil t)
(global-set-key "\M-]" 'comint-dynamic-complete-filename)


;; Show key bindings in helm
; (require 'helm)
; (global-set-key (kbd "M-x") 'helm-M-x)


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; clean stuff needed
;; remove trailin whitespaces

<<<<<<< HEAD
(provide 'key-bindings)
=======
(provide 'key-bindings)
>>>>>>> 257883caf16f9c1cd84a32c48afe9e4701f2037f
