;; kdoh theme
;; what for to customize the emacs

;;; kdoh-theme.el

;;; Code:

(deftheme kdoh)

(defvar kdoh/typeface
  "Source Code Pro-11")

(let ((comment "#b0b0b0")
      (red "#fb0120")
      (orange "#fc6d24")
      (yellow "#fda331")
      (green "#a1c659")
      (aqua "#76c7b7")
      (blue "#6fb3d2")
      (purple "#d381c3")
      (white "#fff"))

  (custom-theme-set-faces
   'kdoh

   `(fringe ((t (:background ,white))))
   `(linum ((t (:foreground ,comment))))

   ;; font lockery
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-constant-face ((t (:foreground ,green))))
   `(font-lock-doc-string-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,blue))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,green))))
   `(font-lock-variable-name-face ((t (:foreground ,red))))
   `(font-lock-warning-face ((t (:foreground ,red)))))

  ;; -------------------------------------

  (setq inhibit-startup-message 1) ; hide the welcome screen on startup

  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (set-frame-font kdoh/typeface)

  (custom-set-variables
   '(linum-format 'dynamic)
   '(initial-frame-alist (quote ((fullscreen . maximized))))) ; fullscreen emacs on startup

  (global-linum-mode 1) ; show line numbers
  (global-hl-line-mode 1)

  (setq show-paren-delay 0)

  (show-paren-mode 1) ; highlight the matching paren, because lisp

  (setq linum-format "  %d") ;; space out the line numbers

  ;; git-gutter customization
  ;; -------------------------------------

  (custom-set-variables
   `(git-gutter:added-sign "++")
   `(git-gutter:deleted-sign "--")
   `(git-gutter:modified-sign "~~"))

  (set-face-foreground `git-gutter:added green)
  (set-face-foreground `git-gutter:deleted red)
  (set-face-foreground `git-gutter:modified yellow)

  (set-fringe-mode 0) ; no fringe please

  ;; powerline
  ;; -------------------------------------

  (setq powerline-arrow-shape 'curve)

  (custom-set-faces
   `(mode-line ((t (:foreground ,white :background ,green))))
   `(mode-line-inactive ((t (:foreground ,green :background "#e4e4e4"))))))


(provide-theme 'kdoh)
;;; kdoh-theme.el ends here
