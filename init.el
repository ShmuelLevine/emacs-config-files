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
(load "/usr/share/emacs/site-lisp/clang-format-5.0/clang-format.el")
;(load "/usr/local/share/clang/clang-format.el")
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
(require 'setup-completion)

(global-set-key (kbd "<f2>") 'other-window)

(windmove-default-keybindings)

;; function-args

 (require 'function-args)
 (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)



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
                               (call-interactively 'projectile-compile-project)))

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

;; Package: projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

(require 'helm-projectile)
(helm-projectile-on)
(setq projectile-completion-system 'helm)
(setq projectile-indexing-method 'alien)

;; Package: ibuffer-movement-cycle
(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<S-left>")   'buf-move-left)
(global-set-key (kbd "<S-right>")  'buf-move-right)

;Alternatively, you may let the current window switch back to the previous
;buffer, instead of swapping the buffers of both windows. Set the
;following customization variable to 'move to activate this behavior:

(setq buffer-move-behavior 'move)


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
 '(package-selected-packages
   (quote
    (dired-rainbow rainbow-delimiters rainbow-identifiers isearch-symbol-at-point which-key buffer-move zygospore yasnippet yafolding xterm-color ws-butler volatile-highlights undo-tree smartscan smartparens magit-gitflow magit-filenotify magit iy-go-to-char isearch+ image-dired+ image+ iedit helm-swoop helm-projectile helm-gtags helm-gitignore helm-git helm-fuzzier helm-flycheck helm-flx helm-company google-this gitignore-mode git-commit ggtags fuzzy function-args frame-cmds flycheck-irony flycheck expand-line epl embrace duplicate-thing dummyparens dtrt-indent flyspell-lazy flyspell-correct-helm helm-flyspell dired-subtree dired-dups dired-sort dired-filter dired+ digit-groups diffview cmake-project comment-dwim-2 company-flx company-try-hard company-statistics company-irony-c-headers company-irony company-c-headers company cmake-mode clean-buffers clean-aindent-mode bookmark+ autopair anzu ace-jump-mode ace-jump-helm-line ace-isearch)))
 '(safe-local-variable-values (quote ((eval c-set-offset (quote innamespace) 0)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:background "color-33" :foreground "brightwhite"))))
 '(diff-added ((t (:inherit diff-changed :background "#226666"))))
 '(diff-changed ((t (:foreground "white"))))
 '(diff-file-header ((t (:weight ultra-bold))))
 '(diff-header ((t (:background "#407f7f"))))
 '(diff-removed ((t (:inherit diff-changed :background "#aa3939"))))
 '(helm-selection ((t (:background "color-17" :distant-foreground "black"))))
 '(helm-visible-mark ((t (:background "color-89"))))
 '(highlight ((t (:background "color-33"))))
 '(lazy-highlight ((t (:background "color-33"))))
 '(link ((t (:foreground "cyan" :underline t))))
 '(magit-diff-added ((t (:background "Plum" :foreground "gray30" :weight extra-bold))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "black"))))
 '(magit-diff-removed ((t (:inherit diff-removed))))
 '(magit-diff-removed-highlight ((t (:inherit diff-removed :weight semi-bold))))
 '(magit-section-heading ((t (:foreground "PaleGoldenrod" :weight bold))))
 '(magit-section-highlight ((t (:background "grey15"))))
 '(minibuffer-prompt ((t (:foreground "green"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "black"))))
 '(secondary-selection ((t (:background "yellow1" :foreground "color-234"))))
 '(semantic-highlight-edits-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-highlight-func-current-tag-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-idle-symbol-highlight ((t (:inherit region :foreground "black"))))
 '(shadow ((t (:foreground "#226666"))))
 '(smerge-markers ((t (:background "grey85" :foreground "black"))))
 '(smerge-mine ((t (:background "#660000"))))
 '(smerge-other ((t (:background "#003300"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "#00b300" :weight ultra-bold))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "#b30000"))))
 '(sp-pair-overlay-face ((t (:inherit highlight :foreground "black"))))
 '(speedbar-highlight-face ((t (:background "green" :foreground "black"))))
 '(whitespace-space ((t (:foreground "blue1" :underline (:color foreground-color :style wave))))))

(defun forward-or-backward-sexp (&optional arg)
  "Go to the matching parenthesis character if one is adjacent to point.
Optional argument ARG sets number of expressions to move."
  (interactive "^p")
  (cond ((looking-at "\\s(") (forward-sexp arg))
        ((looking-back "\\s)" 1) (backward-sexp arg))
        ;; Now, try to succeed from inside of a bracket
        ((looking-at "\\s)") (forward-char) (backward-sexp arg))
        ((looking-back "\\s(" 1) (backward-char) (forward-sexp arg))))


(message "Ready to play!")

;; Package zygospore
(require 'zygospore)
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

;; Custom code to renumber unit tests
(require 'renumber-tests)
(global-set-key (kbd "C-c M-s n") 'renumber-tests)
(global-set-key (kbd "C-c M-s r") 'renumber-tests-auto)

;; Save all auto-save / recovery files in a single directory under the main emacs directory
;; instead of the default behaviour of saving autorecovery files in the same directory as
;; the original file

(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))


(provide 'init)
;;; init.el ends here
(put 'dired-find-alternate-file 'disabled nil)
