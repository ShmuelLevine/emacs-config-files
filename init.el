(require 'package)
(add-to-list

 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)
(package-initialize)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

(load-file "~/.emacs.d/installed_packages.el")

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package demo-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

;; this variables must be set before load helm-gtags
;; you can change to any prefix key of your choice
(setq helm-gtags-prefix-key "\C-c g")

;; magit
(require 'magit)
(global-set-key (kbd "<f9>") 'magit-status)

;; Gitflow plugin for Magit.

 (require 'magit-gitflow)
 (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

;; C-f in magit status buffer will invoke the gitflow popup.
(load "/usr/share/emacs/site-lisp/clang-format-3.8/clang-format.el")
(global-set-key [C-M-tab] "clang-format-region")
(global-set-key (kbd "C-x \\") 'clang-format-region)
(global-set-key (kbd "C-x /") 'clang-format-buffer)

(global-set-key (kbd "<f2>") 'other-window)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)
(require 'setup-environment)


(global-set-key (kbd "<f2>") 'other-window)

(windmove-default-keybindings)

;; function-args

;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(delete 'company-semantic company-backends)
;(define-key c-mode-map  [(tab)] 'company-complete)
;(define-key c++-mode-map  [(tab)] 'company-complete)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;(delete 'company-semantic company-backends)
;(define-key c-mode-map  [(tab)] 'company-complete)
;(define-key c++-mode-map  [(tab)] 'company-complete)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)


;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq
 c-default-style "stroustrup" ;; set style to "linux"
 )

(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; Package: clean-aindent-mode
;(require 'clean-aindent-mode)
;(add-hook 'prog-mode-hook 'clean-aindent-mode)

;; Package: dtrt-indent
(require 'dtrt-indent)
(dtrt-indent-mode 1)

;; Package: ws-butler
(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Package: smartparens
(require 'smartparens-config)

(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; Package: projejctile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

(require 'helm-projectile)
(helm-projectile-on)
(setq projectile-completion-system 'helm)
(setq projectile-indexing-method 'alien)

;;(custom-set-variables
;; ;; custom-set-variables was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(magit-commit-arguments (quote ("--verbose")))
;; '(safe-local-variable-values (quote ((eval c-set-offset (quote innamespace) 0)))))
;;(custom-set-faces
;; ;; custom-set-faces was added by Custom.
;; ;; If you edit it by hand, you could mess it up, so be careful.
;; ;; Your init file should contain only one such instance.
;; ;; If there is more than one, they won't work right.
;; '(company-tooltip ((t (:background "color-33" :foreground "brightwhite"))))
;; '(diff-added ((t (:inherit diff-changed :background "#226666"))))
;; '(diff-changed ((t (:foreground "white"))))
;; '(diff-file-header ((t (:weight ultra-bold))))
;; '(diff-header ((t (:background "#407f7f"))))
;; '(diff-removed ((t (:inherit diff-changed :background "#aa3939"))))
;; '(link ((t (:foreground "cyan" :underline t))))
;; '(magit-diff-added ((t (:background "Plum" :foreground "gray30" :weight extra-bold))))
;; '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "black"))))
;; '(magit-section-heading ((t (:foreground "PaleGoldenrod" :weight bold))))
;; '(minibuffer-prompt ((t (:foreground "green"))))
;; '(shadow ((t (:foreground "#226666"))))
;; '(whitespace-space ((t (:foreground "blue1" :underline (:color foreground-color :style wave))))))
;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-commit-arguments (quote ("--verbose")))
 '(magit-log-section-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(safe-local-variable-values (quote ((eval c-set-offset (quote innamespace) 0))))
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((t (:inherit diff-changed :background "#36648b"))))
 '(diff-file-header ((t (:background "grey10" :weight bold))))
 '(diff-header ((t (:background "grey20"))))
 '(diff-removed ((t (:inherit diff-changed :background "#8b1a1a"))))
 '(magit-diff-added ((t (:inherit diff-added))))
 '(magit-diff-added-highlight ((t (:inherit diff-added :weight semi-bold))))
 '(magit-diff-removed ((t (:inherit diff-removed))))
 '(magit-diff-removed-highlight ((t (:inherit diff-removed :weight semi-bold))))
 '(magit-section-highlight ((t (:background "grey15"))))
 '(sp-pair-overlay-face ((t (:inherit highlight :foreground "black"))))
 '(whitespace-space ((t (:background "grey15" :foreground "lightgray")))))



(message "Ready to play!")

;; Package zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-elete-other-windows)
