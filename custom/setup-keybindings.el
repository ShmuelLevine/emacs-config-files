;;; Setup-Keybindings.el --- Configure custom keybindings

;;; Commentary:

;; This file consolidates my custom keybindings into a single location to make it easier to find/reconfigure settingsn

;;; Code:


;; Sidebar
(global-set-key (kbd "C-x l") 'sidebar-buffers-open)
;; (previously count-lines-page)


;; Shmuel Custom
;; (global-set-key (kbd "C-c r") 'string-insert-rectangle)


;; highlight-symbol
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; lsp-mode
(global-set-key (kbd "M-.") 'lsp-find-definition)
(global-set-key (kbd "C-.") 'lsp-find-references)

;; magit
(global-set-key (kbd "<f9>") 'magit-status)

;; clang-format
(global-set-key [C-M-tab] "clang-format-region")
(global-set-key (kbd "C-x \\") 'clang-format-region)
(global-set-key (kbd "C-x /") 'clang-format-buffer)

; misc. motion
(global-set-key (kbd "<f2>") 'other-window)

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Package: ibuffer-movement-cycle
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
;(global-set-key (kbd "<S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; Custom code to renumber unit tests
(global-set-key (kbd "C-c M-s n") 'renumber-tests)
(global-set-key (kbd "C-c M-s r") 'renumber-tests-auto)

;; PACKAGE: smartparens

(defvar shmuel-smartparens-prefix-mode-map)
(defvar shmuel-smartparens-mode-map)
(setq shmuel-smartparens-prefix-mode-map (make-sparse-keymap))
(setq shmuel-smartparens-mode-map (make-sparse-keymap))

(define-key shmuel-smartparens-mode-map (kbd "<M-right>") 'sp-forward-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<C-right>") 'sp-next-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<M-left>") 'sp-previous-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<C-left>") 'sp-backward-sexp)

(define-key shmuel-smartparens-mode-map (kbd "<M-down>") 'sp-down-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<M-S-down>") 'sp-backward-down-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<M-up>") 'sp-up-sexp)
(define-key shmuel-smartparens-mode-map (kbd "<M-S-up>") 'sp-backward-up-sexp)
(define-key shmuel-smartparens-mode-map (kbd "M-p") shmuel-smartparens-prefix-mode-map)

(define-key shmuel-smartparens-prefix-mode-map (kbd "M-a") 'sp-beginning-of-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "M-e") 'sp-end-of-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "f") 'sp-forward-symbol)
(define-key shmuel-smartparens-prefix-mode-map (kbd "b") 'sp-backward-symbol)

(define-key shmuel-smartparens-prefix-mode-map (kbd "M-d") 'sp-kill-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "<M-backspace>") 'sp-backward-kill-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "M-c") 'sp-copy-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "M-S-c") 'sp-backward-copy-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "w") 'sp-rewrap-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "<right>") 'sp-forward-slurp-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "<M-right>") 'sp-forward-barf-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "<left>") 'sp-backward-slurp-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "<M-left>") 'sp-backward-barf-sexp)
(define-key shmuel-smartparens-prefix-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)

(defun setup-custom-smartparens-keymaps () "Setup custom keybindings for smartparens."
  (setq smartparens-mode-map (copy-keymap shmuel-smartparens-mode-map) )
  ;; (set-keymap-parent smartparens-strict-mode-map shmuel-smartparens-mode-map)
  )

(add-hook 'smartparens-mode 'setup-custom-smartparens-keymaps)
;(add-hook 'c++-mode-hook 'setup-custom-smartparens-keymaps)

(defvar shmuel-cpp-map)
(setq shmuel-cpp-map (make-sparse-keymap))
(define-key shmuel-cpp-map (kbd "C-M-S-o") 'split-line)
(define-key shmuel-cpp-map (kbd "C-M-o") 'moo-complete)
(define-key shmuel-cpp-map (kbd "M-o") 'other-window)
(defun setup-shmuel-cpp-map() "Setup custom keybindings for c++."
       (set-keymap-parent shmuel-cpp-map shmuel-smartparens-mode-map)
       (use-local-map shmuel-cpp-map)
       )
(add-hook 'c++-mode-hook 'setup-shmuel-cpp-map)

;; (set-keymap-parent smartparens-mode-map shmuel-smartparens-mode-map)

;; (use-local-map shmuel-smartparens-mode-map)

;; PACKAGE: comment-dwim-2
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; PACKAGE: duplicate-thing
(global-set-key (kbd "M-c") 'duplicate-thing)

;; PACKAGE: iedit
(global-set-key (kbd "C-;") 'iedit-mode)

;; Open line
(global-set-key (kbd "M-o") 'prelude-smart-open-line)
(global-set-key (kbd "M-o") 'open-line)

;; ace-jump-mode
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; ace-window
;; (define-key function-args-mode-map (kbd "M-o") 'ace-window)


;; GGtags -- Refer to setup-ggtags.el
;(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
;(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
;(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
;(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
;(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
;(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
;
;(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)


;; Helm-gtags -- Refer to setup-helm-gtags.el
;(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
;(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
;(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
;(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
;(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
;(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
(global-set-key (kbd "C-c h o") 'helm-occur)

(global-set-key (kbd "C-c h C-c w") 'helm-wikipedia-suggest)

(global-set-key (kbd "C-c h x") 'helm-register)
;; (global-set-key (kbd "C-x r j") 'jump-to-register)

(define-key 'help-command (kbd "C-f") 'helm-apropos)
(define-key 'help-command (kbd "r") 'helm-info-emacs)
(define-key 'help-command (kbd "C-l") 'helm-locate-library)

;; Helm-swoop
(global-set-key (kbd "C-c h o") 'helm-swoop)
(global-set-key (kbd "C-c s") 'helm-multi-swoop-all)

;; (global-set-key (kbd "M-.") 'rtags-find-symbol-at-point)
;; (rtags-enable-standard-keybindings)
(provide 'setup-keybindings)
;;; setup-keybindings.el ends here
