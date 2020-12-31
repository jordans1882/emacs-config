;;; Package Management
;; Load Cask

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; (setq package-enable-at-startup nil)
;; (package-initialize)

;; (setq byte-compile-warnings '(cl-functions))

(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Load Pallet
(require 'pallet)
(pallet-mode t)

(defvar treemacs-no-load-time-warnings t)
;; (set-face-attribute 'hl-line nil :background "#2d2d31")
;; (eval-when-compile (defvar misenplace-wm))
;; use-package to load and configure packages
(menu-bar-mode -1)
(scroll-bar-mode -1)
(require 'use-package)
(use-package misenplace
  :init
  (setq misenplace-wm nil)
  :defines misenplace-wm
  :functions setup-misenplacewm
  :config
  ;;(setup-misenplacewm)
  ;;(setup-misenplaceterm)
  )

  (setq default-frame-alist '((font ."DejaVu Sans Mono-20")))

  (setq backup-directory-alist `(("." . "~/.saves")))
  ;; (set-default-font "DejaVu Sans Mono-50")
  ;; (set-face-attribute 'default nil :font "DejaVu Sans Mono-50" )
  ;; (set-frame-font "DejaVu Sans Mono-50" nil t)
  ;;(setq default-frame-alist '((font . "DejaVu Sans Mono-50"))`


;; (use-package haskell-mode)
;; (treemacs-load-theme "Default")

;; set transparency
(set-frame-parameter (selected-frame) 'alpha '(95 50))
(add-to-list 'default-frame-alist '(alpha 95 50))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/current_todo.org")))
 '(package-selected-packages
   (quote
    (yasnippet-snippets which-key web-mode undercover treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil smex smartparens rg prodigy powerline popwin poly-R pallet ox-reveal org-ref org-projectile org-pomodoro org-bullets nyan-mode multiple-cursors misenplace lorem-ipsum ivy-prescient ivy-posframe idle-highlight-mode flycheck-cask eyebrowse exwm-x expand-region exec-path-from-shell evil-nerd-commenter ess ert-runner ert-async elscreen dumb-jump drag-stuff doom-modeline dashboard counsel-projectile counsel-org-clock auto-complete ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
