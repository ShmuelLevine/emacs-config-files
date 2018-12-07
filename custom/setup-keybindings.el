;;; Setup-Keybindings.el --- Configure custom keybindings

;;; Commentary:

;; This file consolidates my custom keybindings into a single location to make it easier to find/reconfigure settingsn

;;; Code:


;; Sidebar
(global-set-key (kbd "C-x l") 'sidebar-buffers-open)
;; (previously count-lines-page)


;; Shmuel Custom
(global-set-key (kbd "C-c r") 'string-insert-rectangle)

;; highlight-symbol
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)



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
(global-set-key (kbd "<S-left>")   'buf-move-left)
(global-set-key (kbd "<S-right>")  'buf-move-right)

;; Custom code to renumber unit tests
(global-set-key (kbd "C-c M-s n") 'renumber-tests)
(global-set-key (kbd "C-c M-s r") 'renumber-tests-auto)

;; PACKAGE: smartparens
(global-set-key (kbd "M-<left>") 'sp-beginning-of-sexp)
(global-set-key (kbd "M-<right>") 'sp-end-of-sexp)

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


(provide 'setup-keybindings)
;;; setup-keybindings.el ends here
