;;; init.el --- Main custom emacs config file

;;; Commentary:
; Updated configuration file, started May 2019
; This file and associated files in the ./custom/ directory define my
; custom configuration for Emacs


;;; Code:

(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
 '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/custom/all-the-icons")


;; Bootstrap 'use-package' package for installation/configuration of packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "5c0ac0e7d92102542908459ffd16f3735f556634191d0fa28d8fd98c31d97cc3" default)))
 '(magit-commit-arguments (quote ("--verbose")))
 '(magit-diff-arguments
   (quote
    ("--no-ext-diff" "--stat" "--diff-algorithm=patience")))
 '(magit-diff-section-arguments
   (quote
    ("--function-context" "--ignore-space-change" "--no-ext-diff")))
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "--stat" "-n256")))
 '(package-selected-packages
   (quote
    (smart-mode-line-powerline-theme smart-mode-line try yatemplate shut-up buttercup auto-yasnippet helm-c-yasnippet ivy-yasnippet yasnippet yasnippet-snippets lsp-treemacs ccls company-lsp helm-lsp lsp-clangd lsp-mode lsp-ui ace-window company-ycmd flycheck-ycmd ycmd git-gutter git-timemachine gitconfig-mode irony deferred request-deferred helm-bind-key helm-descbinds helm-describe-modes use-package discover discover-my-major dash-functional frame-local ov xkcd magit-org-todos magit-todos dired-rainbow rainbow-delimiters rainbow-identifiers isearch-symbol-at-point which-key buffer-move zygospore yafolding xterm-color ws-butler volatile-highlights undo-tree smartscan smartparens magit-gitflow magit-filenotify magit iy-go-to-char isearch+ image-dired+ image+ iedit helm-swoop helm-projectile helm-gtags helm-gitignore helm-git helm-fuzzier helm-flycheck helm-flx helm-company google-this gitignore-mode git-commit ggtags fuzzy function-args frame-cmds flycheck-irony flycheck expand-line epl embrace duplicate-thing dummyparens dtrt-indent flyspell-lazy flyspell-correct-helm helm-flyspell dired-subtree dired-dups dired-sort dired-filter dired+ digit-groups diffview cmake-project comment-dwim-2 company-flx company-try-hard company-statistics company-irony-c-headers company-irony company-c-headers company cmake-mode clean-buffers clean-aindent-mode bookmark+ autopair anzu ace-jump-mode ace-jump-helm-line ace-isearch)))
 '(rtags-socket-file "/home/shmuel/.rdm")
 '(safe-local-variable-values
   (quote
    ((projectile-project-compilation-cmd . "cd /home/shmuel/src/fx_hpx/src/build/clang && make -kj4")
     (projectile-project-compilation-cmd . "cd /home/shmuel/src/fx_hpx/src/build/gcc && make -kj4")
     (eval c-set-offset
           (quote innamespace)
           0))))
 '(smartparens-global-mode t)
 '(smartparens-global-strict-mode nil)
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
 '(sml/no-confirm-load-theme t)
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   (quote sml/global)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(sml/shorten-modes t)
 '(sml/theme (quote automatic))
 '(sp-base-key-bindings nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 92 :width normal :foundry "default" :family "default"))))
 '(company-tooltip ((t (:background "#0087ff" :foreground "white"))))
 '(diff-added ((t (:inherit diff-changed :background "#226666"))))
 '(diff-changed ((t (:foreground "white"))))
 '(diff-file-header ((t (:weight ultra-bold))))
 '(diff-header ((t (:background "#407f7f"))))
 '(diff-removed ((t (:inherit diff-changed :background "#aa3939"))))
 '(helm-selection ((t (:background "#00005f" :distant-foreground "black"))))
 '(helm-visible-mark ((t (:background "#87005f"))))
 '(highlight ((t (:background "#0087ff"))))
 '(lazy-highlight ((t (:background "#0087ff"))))
 '(link ((t (:foreground "cyan" :underline t))))
 '(magit-diff-added ((t (:background "Plum" :foreground "gray30" :weight extra-bold))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "black"))))
 '(magit-diff-removed ((t (:inherit diff-removed))))
 '(magit-diff-removed-highlight ((t (:inherit diff-removed :weight semi-bold))))
 '(magit-section-heading ((t (:foreground "PaleGoldenrod" :weight bold))))
 '(magit-section-highlight ((t (:background "grey15"))))
 '(minibuffer-prompt ((t (:foreground "green"))))
 '(region ((t (:background "lightgoldenrod2" :foreground "black"))))
 '(secondary-selection ((t (:background "yellow1" :foreground "#1c1c1c"))))
 '(semantic-highlight-edits-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-highlight-func-current-tag-face ((t (:background "gray90" :foreground "black"))))
 '(semantic-idle-symbol-highlight ((t (:inherit region :foreground "black"))))
 '(shadow ((t (:foreground "#226666"))))
 '(smerge-lower ((t (:background "#003300"))))
 '(smerge-markers ((t (:background "grey85" :foreground "black"))))
 '(smerge-refined-added ((t (:inherit smerge-refined-change :background "#00b300" :weight ultra-bold))))
 '(smerge-refined-removed ((t (:inherit smerge-refined-change :background "#b30000"))))
 '(smerge-upper ((t (:background "#660000"))))
 '(sml/vc ((t (:inherit sml/git :background "grey40" :foreground "#ee00bb"))))
 '(sp-pair-overlay-face ((t (:inherit highlight :foreground "black"))))
 '(speedbar-highlight-face ((t (:background "green" :foreground "black"))))
 '(whitespace-space ((t (:foreground "blue1" :underline (:color foreground-color :style wave))))))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package yafolding
  :ensure t
  :config (yafolding-mode)
  :hook ((emacs-lisp-mode . yafolding-mode)
         (c-mode . yafolding-mode)
         (c++-mode . yafolding-mode)))

;; (use-package rich-minority :ensure t )
(use-package smart-mode-line
  :ensure t
  ;; :after rich-minority
  :config
  ;; (rich-minority-mode 1)
  (setq rm-blacklist '(" GitGutter" " dtrt-indent" " company" " AceI"
                       " Paredit" " Wrap" " Fill"))
  (sml/setup))

;; (use-package powerline
  ;; :ensure t)

(use-package smart-mode-line-powerline-theme
  :ensure t
  :after smart-mode-line
  ;; :after powerline
  :config (powerline-default-theme))

(use-package magit
  :ensure t
  :config
  ;; Change the summary line length in magit to be 70 instead of 50.  The default is
  ;; just too short...
  (setq git-commit-summary-max-length 70)
  :bind ("<f9>" . magit-status))

;; C-f in magit status buffer will invoke the gitflow popup.
(use-package magit-gitflow
  :hook (magit-mode . turn-on-magit-gitflow))

(use-package projectile
  :config (projectile-mode)
          (setq projectile-enable-caching t)
          (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package helm-projectile
  :config (helm-projectile-on)
          (setq projectile-completion-system 'helm)
          (setq projectile-indexing-method 'alien))

(use-package buffer-move
  :bind (
         ("<C-S-up>" . buf-move-up )
         ("<C-S-down>" . buf-move-down )
         ("<C-S-left>" . buf-move-left )
         ("<C-S-right>" . buf-move-right ))
  :config (setq buffer-move-behavior 'move) )

(use-package zygospore
  :bind ("C-x 1" .  zygospore-toggle-delete-other-windows))

(use-package yasnippet
  :ensure t
  :config
  (use-package yasnippet-snippets
    :ensure t)
  (yas-global-mode t)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "C-'") #'yas-expand)
 ; (add-to-list #'yas-snippet-dirs "my-personal-snippets")
  (yas-reload-all)
  (defun shk-yas/helm-prompt (prompt choices &optional display-fn)
    "Use helm to select a snippet. Put this into `yas-prompt-functions.'"
    (interactive)
    (setq display-fn (or display-fn 'identity))
    (if (require 'helm-config)
        (let (tmpsource cands result rmap)
          (setq cands (mapcar (lambda (x) (funcall display-fn x)) choices))
          (setq rmap (mapcar (lambda (x) (cons (funcall display-fn x) x)) choices))
          (setq tmpsource
                (list
                 (cons 'name prompt)
                 (cons 'candidates cands)
                 '(action . (("Expand" . (lambda (selection) selection))))
                 ))
          (setq result (helm-other-buffer '(tmpsource) "*helm-select-yasnippet"))
          (if (null result)
              (signal 'quit "user quit!")
            (cdr (assoc result rmap))))
      nil))
;  (setq yas-prompt-functions '(yas-ido-prompt))
  (defun help/yas-after-exit-snippet-hook-fn ()
    (prettify-symbols-mode)
    (prettify-symbols-mode))
  (add-hook 'yas-after-exit-snippet-hook #'help/yas-after-exit-snippet-hook-fn)
  :diminish yas-minor-mode)

(use-package volatile-highlights
  :ensure t
  :config
  (volatile-highlights-mode t)
  (vhl/define-extension 'undo-tree 'undo-tree-yank 'undo-tree-move)
  (vhl/install-extension 'undo-tree))

(use-package dtrt-indent
  :ensure t
  :config
  (dtrt-indent-mode 1)
  (setq dtrt-indent-verbosity 0))

(use-package ws-butler
  :ensure t
  :hook
  ((c-mode-common-hook . ws-butler-mode)
  (text-mode . ws-butler-mode)
  (fundamental-mode . ws-butler-mode)))

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

(use-package smartparens
  :ensure t
  :config
  (setq sp-autoskip-closing-pair 'always)
  (show-paren-mode 1))

(use-package smartparens-config
  :ensure smartparens
  :config
    (show-smartparens-global-mode t)
    (sp-base-key-bindings 'paredit)
    (sp-autoskip-closing-pair 'always)
    (sp-hybrid-kill-entire-symbol nil)
    (smartparens-global-mode 1)
    (show-paren-mode 1)
  :hook ((prog-mode markdown-mode ) . turn-on-smartparens-mode))

(use-package anzu
  :ensure t
  :config
  (global-anzu-mode)
  :bind
  (( "M-%" . anzu-query-replace)
   ("C-M-%" . anzu-query-replace-regexp)))

(use-package iedit
  :ensure t
  :config
  (setq iedit-toggle-key-default nil)
  :bind
  ("C-;" . iedit-mode))

(use-package comment-dwim-2
  :ensure t
  :bind ("M-;" . comment-dwim-2) )

(use-package duplicate-thing
  :bind
  ( "M-c" . duplicate-thing))

(use-package ace-jump-helm-line
  :config
  (eval-after-load "helm"
    '(define-key helm-map (kbd "C-'") 'ace-jump-helm-line)))

(use-package lsp-mode :commands lsp
  :bind (:map c++-mode-map (
         ("M-." . lsp-find-definition)
         ("C-." . lsp-find-references))))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp
  :commands company-lsp
  :bind ("M-i" . company-lsp)
  )

(use-package ccls
  :config
  (setq ccls-executable "/usr/local/bin/ccls")
  (setq lsp-prefer-flymake nil)
  (setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-cppcheck c/c++-gcc))
  :hook ((c-mode c++-mode objc-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package company-irony-c-headers
  :ensure company )

(use-package company
  :ensure t
  :config
  (delete 'company-semantic company-backends)
  (delete 'company-capf company-backends)
  (setq company-idle-delay 0.25)
  (setq company-async-timeout 10) ;; set timeout to 10 seconds
  (setq process-adaptive-read-buffering nil)
  (setq company-minimum-prefix-length 3)
  (setq company-backends '( (company-lsp company-irony-c-headers)
                            (company-files          ; files & directory
                             company-keywords       ; keywords
                             company-yasnippet
                             )
                            company-cmake
                            (company-abbrev company-dabbrev)
                            ))
  :hook
  (after-init-hook . global-company-mode)
  :bind (:map c++-mode-map ([(backtab)] . company-complete)
              :map company-mode-map ("C-:" . helm-company)
              :map company-active-map ("C-:" . helm-company)
              )
  )

(use-package company-flx
  :ensure t
  :config
  (company-flx-mode +1) )

(use-package ace-jump-mode
  :ensure t
  :commands (ace-jump-mode ace-jump-mode-pop-mark)
  :config
  (ace-jump-mode-enable-mark-sync)
  :bind(
        ("C-c j" . ace-jump-mode)
        ("C-c M-j" . ace-jump-mode-pop-mark)))

(use-package flycheck
  :ensure t
  :hook ((after-init-hook . #'global-flycheck-mode)
                                        ;flycheck-mode-hook . #'flycheck-irony-setup)
  ))

(use-package ace-isearch
  :ensure t
  :config
  (global-ace-isearch-mode +1))

(use-package dired-dups :ensure t )
(use-package dired-sort :ensure t )
(use-package dired-rainbow :ensure t )
(use-package dired-narrow :ensure t )
(use-package dired-quick-sort :ensure t )
(use-package dired-recent :ensure t )
(use-package dired-efap :ensure t
  :bind(:map dired-mode-map ([M-f2] . dired-efap )))
;;TODO fix
(use-package dired-filter :ensure t
  :bind(:map dired-mode-map ("<f7>" . dired-filter-map)))

(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-dired
  :ensure nil
  :hook
  (dired-mode . all-the-icons-dired-mode) )

(use-package dired-toggle
  :ensure t
  ;; :defer t
  :bind (("<f6>" . #'dired-toggle)
         :map dired-mode-map
         ("q" . #'dired-toggle-quit)
         ([remap dired-find-file] . #'dired-toggle-find-file)
         ([remap dired-up-directory] . #'dired-toggle-up-directory)
         ("C-c C-u" . #'dired-toggle-up-directory))
  :config
  (setq dired-toggle-window-size 32)
  (setq dired-toggle-window-side 'left)

  ;; Optional, enable =visual-line-mode= for our narrow dired buffer:
  (add-hook 'dired-toggle-mode-hook
            (lambda () (interactive)
              (visual-line-mode 1)
              (setq-local visual-line-fringe-indicators '(nil right-curly-arrow))
              (setq-local word-wrap nil))))

(use-package diredfl
  :ensure t
  :hook (dired-mode . diredfl-mode))

(use-package dired-hide-dotfiles
  :ensure t
  :bind (:map dired-mode-map ( "." . #'dired-hide-dotfiles-mode))
   )

;; TODO
(use-package image-dired
  :ensure t
  :disabled
  :config
  ;; (eval-after-load 'image-dired '(require 'image-dired+))
  ;; (eval-after-load 'image-dired+ '(image-diredx-async-mode 1))
  ;; (eval-after-load 'image-dired+ '(image-diredx-adjust-mode 1))

  ;; (define-key image-dired-thumbnail-mode-map "\C-n" 'image-diredx-next-line)
  ;; (define-key image-dired-thumbnail-mode-map "\C-p" 'image-diredx-previous-line)
 )

(use-package discover-my-major
  :ensure t
  :bind ("C-h S-m" . discover-my-major) )

(use-package rainbow-delimiters
  :ensure t
  :hook
  (c++-mode . rainbow-delimiters-mode) )

(use-package rainbow-identifiers
  :ensure t
  :hook
  (c++-mode . rainbow-identifiers-mode) )

(use-package highlight-symbol
  :ensure t
  :load-path "~/.emacs.d/custom/highlight-symbol"
  :bind (:map c++-mode-map (([(control f3)] . highlight-symbol)
                            ([f3] . highlight-symbol-next)
                            ([(shift f3)] . highlight-symbol-prev)
                            ([(meta f3)] . highlight-symbol-query-replace))) )

(use-package ace-window
  :ensure t
  :bind*
  (("M-o" . ace-window)
  ("<f2>" . ace-window)))

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode +1) )


(require 'setup-bookmarks)
(require 'setup-editing)
(require 'setup-sidebar)
(require 'setup-helm)
(require 'renumber-tests)
(require 'setup-keybindings)

(yafolding-hide-all)


;;; *  *  *  *  *  *  *  *
;; Setup functionality not contained within a package
;;; *  *  *  *  *  *  *  *

; TODO (make into package?)
; Clang Format
(load "/usr/share/emacs/site-lisp/clang-format-7/clang-format.el")
(global-set-key [C-M-tab] "clang-format-region")
(global-set-key (kbd "C-x \\") 'clang-format-region)
(global-set-key (kbd "C-x /") 'clang-format-buffer)


;; TODO
;; Set the compile command to be hardcoded to fx_hpx build/gcc directory (for now)
(defun set_compile_command ()
  (setq compile-command "cd /local/src/fx_hpx/src/build/gcc; make -kj8")
  )
(add-hook 'c++-mode-hook 'set_compile_command)



;; Add improved function-related help system
(require 'help-fns+)

(setq c-default-style "stroustrup" )

(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; Custom code to renumber unit tests
(global-set-key (kbd "C-c M-s n") 'renumber-tests)
(global-set-key (kbd "C-c M-s r") 'renumber-tests-auto)


;; TODO
;; Open line
(global-set-key (kbd "M-o") 'prelude-smart-open-line)
(global-set-key (kbd "M-o") 'open-line)


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

;; (setq gc-cons-threshold 100000000)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Setup which-function-mode to display the current function in the header row of the current buffer
;; Show the current function name in the header line
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
      ;; We remove Which Function Mode from the mode line, because it's mostly
      ;; invisible here anyway.
      (assq-delete-all 'which-func-mode mode-line-misc-info))


;; Save all auto-save / recovery files in a single directory under the main emacs directory
;; instead of the default behaviour of saving autorecovery files in the same directory as
;; the original file

(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; Stop semantic from constantly reparsing!
(setq semantic-idle-scheduler-idle-time 30)
;(setq semantic-idle-scheduler-queue 30)
;(setq semantic-idle-scheduler-timer 30)


(put 'dired-find-alternate-file 'disabled nil)
(put 'downcase-region 'disabled nil)

(defun forward-or-backward-sexp (&optional arg)
  "Go to the matching parenthesis character if one is adjacent to point.
Optional argument ARG sets number of expressions to move."
  (interactive "^p")
  (cond ((looking-at "\\s(") (forward-sexp arg))
        ((looking-back "\\s)" 1) (backward-sexp arg))
        ;; Now, try to succeed from inside of a bracket
        ((looking-at "\\s)") (forward-char) (backward-sexp arg))
        ((looking-back "\\s(" 1) (backward-char) (forward-sexp arg))))

(global-set-key (kbd "C-c C-s") 'isearch-forward-symbol-at-point)


(setq tab-width 2)
(setq-default c-basic-offset 2)
(setq c-basic-offset 2)

(defun cpp-tab-size ()
  (setq c-basic-offset 2)
  (setq tab-width 2)
  )

(add-hook 'c++-mode-hook 'cpp-tab-size)



;; TODO
;; Discover
;; (discover-add-context-menu
;;  :context-menu '(isearch
;;                  (description "Isearch, occur and highlighting")
;;                  (lisp-switches
;;                   ("-cf" "Case should fold search" case-fold-search t nil))
;;                  (lisp-arguments
;;                   ("=l" "context lines to show (occur)"
;;                    "list-matching-lines-default-context-lines"
;;                    (lambda (dummy) (interactive) (read-number "Number of context lines to show: "))))
;;                  (actions
;;                   ("Isearch"
;;                    ("_" "isearch forward symbol" isearch-forward-symbol)
;;                    ("w" "isearch forward word" isearch-forward-word))
;;                   ("Occur"
;;                    ("o" "occur" occur))
;;                   ("More"
;;                    ("h" "highlighters ..." makey-key-mode-popup-isearch-highlight))))
;;  :bind "C-c M-d")



(message "Ready to play!")



(provide 'init)
;;; init.el ends here
