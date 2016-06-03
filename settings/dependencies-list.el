(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(require 'cl)
;; Guarantee all packages are installed on start
(defvar packages-list
  '(ace-jump-mode
    auto-complete
    browse-kill-ring
    emmet-mode
    expand-region
    direx
    goto-last-change
    smartparens
    evil-leader
    git-gutter
    md-readme
    org
    ido-vertical-mode
    ido-at-point
    ido-ubiquitous
    flx-ido
    projectile
    smex
    multiple-cursors
    mark-multiple
    magit
    web-mode
    wrap-region
    yasnippet
    smooth-scrolling
    undo-tree
    clojure-mode
    js2-mode
    js2-refactor
    cider
    paredit
    solarized-theme
    rainbow-delimiters
    markdown-mode)
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
