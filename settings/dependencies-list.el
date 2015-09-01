(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(ace-jump-mode
    auto-complete
    browse-kill-ring
    coffee-mode
    emmet-mode
    expand-region
    el-get
    fullscreen-mode
    restclient
    key-chord
    git-gutter
    haskell-mode
    js3-mode
    md-readme
    org
    ido-vertical-mode
    ido-at-point
    ido-ubiquitous
    flx-ido
    php-mode
    projectile
    react-snippets
    smex
    multiple-cursors
    mark-multiple
    magit
    web-mode
    wrap-region
    yasnippet
    smooth-scrolling
    undo-tree
    bm)
  "List of packages needs to be installed at launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'custom-dependencies)
