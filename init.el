(setq user-emacs-directory "~/.emacs.d/")

(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))


;; multi scratch
(load-file "~/.emacs.d/plugins/multi-scratch.el")
(require 'multi-scratch)

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
;; Set up load path
(add-to-list 'load-path settings-dir)
;; Conclude init by setting up specifics for the current user
(when (file-exists-p settings-dir)
  (mapc 'load (directory-files settings-dir nil "^[^#].*el$")))

;; Download dependencies
(require 'custom-dependencies)

;; Stuff like clipboard and buffer conifg
(require 'general-settings)

;; Themes and cursors and stuff
(require 'appearance)

;; Mods that are globally enabled
(require 'global-modes)

;; Just key bindings
(require 'key-bindings)

;; Map files to modes
(require 'mode-mappings)


;; Functions (load all files in defuns-dir) 
(setq defuns-dir (expand-file-name "defuns" user-emacs-directory))
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

(require 'utils)


;;;;; Other packages

;; Browse kill ring
(require 'browse-kill-ring)
(setq browse-kill-ring-quit-action 'save-and-restore)



;; Smart M-x is smart
(require 'smex)
(smex-initialize)

; Load mode setups
(require 'js3-mode)
(require 'setup-js3-mode)

(require 'markdown-mode)
(provide 'setup-markdown-mode)

(require 'clojure-mode)
(require 'setup-clojure-mode)

(require 'emmet-mode)
(require 'setup-emmet-mode)

(require 'coffee-mode)
(require 'setup-coffee-mode)


(require 'auto-complete)
(require 'auto-complete-config)
;; some of additional initial config

(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

(require 'goto-last-change)

(require 'smartparens-config)
(add-hook 'js3-mode-hook #'smartparens-mode)


;; (require 'evil-leader) 
;; (global-evil-leader-mode t)
;; ; (evilnc-default-hotkeys)
;; (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;; (global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
;; (global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;; (global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
;; disable creation of lockfiles
(setq create-lockfiles nil)

;; make markdown avaible during export from org
(eval-after-load "org"
  '(require 'ox-md nil t))

;; unique
(require 'uniquify)
; (setq uniquify-buffer-name-style 'reverse)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-args-compile (quote ("-c" "--bare")))
 '(coffee-tab-width 2)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(js2-strict-missing-semi-warning nil)
 '(js3-curly-indent-offset 2)
 '(js3-expr-indent-offset 2)
 '(js3-lazy-commas t)
 '(js3-lazy-dots t)
 '(js3-lazy-operators t)
 '(js3-mirror-mode t)
 '(js3-paren-indent-offset 2)
 '(js3-square-indent-offset 2)
 '(web-mode-code-indent-offset 4)
 '(web-mode-css-indent-offset 4)
 '(web-mode-enable-auto-expanding t)
 '(web-mode-enable-current-element-highlight t)
 '(web-mode-indent-style 4)
 '(web-mode-markup-indent-offset 4)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
