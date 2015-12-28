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
(require 'js2-mode)
(require 'setup-js2-mode)

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

;; disable creation of lockfiles
(setq create-lockfiles nil)

;; unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
